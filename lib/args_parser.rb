# frozen_string_literal: true

# Class Parser syntactic analyzer
class Parser
  attr_reader :save_args, :save

  IDENTIFIERS = {
    Log_in: '-l',
    Port: '-p',
    Directory: '-d',
    List_int: '-d',
    List_str: '-g'
  }.freeze
  def initialize
    @save = SaveArguments.new
  end

  def detect_arguments
    (0...ARGV.length).each do |indice|
      arguments = ARGV[indice]
      determine_flags(arguments)
      @save_args = ARGV[indice + 2]
    end
  end

  def determine_flags(arguments)
    ARGV[0] == IDENTIFIERS[:Log_in] ? l_flags(arguments) : g_flags(arguments)
  end

  def l_flags(arguments)
    enviar = @save_args
    return save.logging if arguments == IDENTIFIERS[:Log_in]
    return save.save_port(enviar) if arguments == IDENTIFIERS[:Port]
    return save.save_directory(enviar) if arguments == IDENTIFIERS[:Directory]
  end

  def g_flags(arguments)
    enviar = @save_args
    return save.save_list_s(enviar) if arguments == IDENTIFIERS[:List_str]
    return save.save_list_i(enviar) if arguments == IDENTIFIERS[:List_int]
  end
end
# Almacen de datos
class SaveArguments
  def logging
    puts 'Iniciando sesion'
  end

  def save_port(enviar)
    puts 'Entrando en puerto: ', enviar
  end

  def save_directory(enviar)
    puts 'Direccionando a: ', enviar
  end

  def save_list_s(enviar)
    list = enviar
    puts 'Lista tipo String enviada', list
  end

  def save_list_i(enviar)
    list = enviar
    puts 'Lista tipo Int enviada', list
  end
end

prueba = Parser.new
prueba.detect_arguments
