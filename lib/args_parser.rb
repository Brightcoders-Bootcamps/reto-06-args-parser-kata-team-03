# frozen_string_literal: true

require_relative 'args_print.rb'

# Class Parser syntactic analyzer
class Parser
  attr_reader :save, :arguments, :enviar

  IDENTIFIERS = {
    Log_in: '-l',
    #Port: '-p',
    #Directory: '-d',
    List_int: '-d',
    List_str: '-g'
  }.freeze

  OPTION_MAPPING = {
    '-l' => :logging,
    '-p' => :save_port,
    '-d' => :save_directory
  }.freeze

 
  def initialize
    @save = PrintArguments.new
  end

  def detect_arguments
    ARGV.each_with_index do |_valor, indice|
      @arguments = ARGV[indice]
      @enviar = ARGV[indice + 1]
      ARGV[0] == IDENTIFIERS[:Log_in] ? l_flags : g_flags
    end
  end
 
  ARGV.each_slice(2).each do |option|
    function_name = option[0]
    next unless OPTION_MAPPING[function_name]

    argument = option[1]
    save.send(OPTION_MAPPING[function_name], argument)
  end


  def l_flags
    cadena = @arguments
    save.send(OPTION_MAPPING[cadena], enviar)
  end

  def g_flags
    cadena = @arguments
    return save.save_list_s(@enviar) if cadena == IDENTIFIERS[:List_str]
    return save.save_list_i(@enviar) if cadena == IDENTIFIERS[:List_int]
  end
end

Parser.new.detect_arguments

