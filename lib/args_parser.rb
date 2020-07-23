# frozen_string_literal: true

require_relative 'args_print.rb'

# Class Parser syntactic analyzer
class Parser
  attr_reader :save

  IDENTIFIERS = {
    Log_in: '-l',
    Port: '-p',
    Directory: '-d',
    List_int: '-d',
    List_str: '-g'
  }.freeze

  def initialize
    @save = PrintArguments.new
  end

  def detect_arguments
    #menssage_error
    ARGV.each_with_index do |_valor, indice|
      arguments = ARGV[indice]
      enviar = ARGV[indice + 1]
      ARGV[0] == IDENTIFIERS[:Log_in] ? l_flags(arguments, enviar) : g_flags(arguments, enviar)
    end
  end

  #def menssage_error
    #first_flag = ARGV[0]()
  #  unless ARGV[0] == IDENTIFIERS[:Log_in] && IDENTIFIERS.value? (ARGV[1])
  #    raise ArgumentError, 'La bandera -l no recibe ningun valor'
  #  end
  #end
  
 
  def l_flags(arguments, enviar)
    cadena = arguments
    return save.logging if cadena == IDENTIFIERS[:Log_in]
    return save.save_port(enviar) if cadena == IDENTIFIERS[:Port]
    return save.save_directory(enviar) if cadena == IDENTIFIERS[:Directory]
  end

  def g_flags(arguments, enviar)
    cadena = arguments
    return save.save_list_s(enviar) if cadena == IDENTIFIERS[:List_str]
    return save.save_list_i(enviar) if cadena == IDENTIFIERS[:List_int]
  end
end

prueba = Parser.new
prueba.detect_arguments
