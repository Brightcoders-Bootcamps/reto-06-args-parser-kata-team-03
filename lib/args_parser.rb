# frozen_string_literal: true

require_relative 'args_print.rb'
# Class Parser syntactic analyzer
class Parser
  attr_reader :save, :arguments, :enviar

  IDENTIFIERS = {
    Log_in: '-l',
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
 

  def l_flags
    cadena = @arguments
   # print "cadena", cadena, "\n"
   # print "opcion ",OPTION_MAPPING[cadena]
    if OPTION_MAPPING[cadena] == nil 
      #puts "no esta en el mapping"
    else
      @save.send(OPTION_MAPPING[cadena], enviar)
    end
  end

  def g_flags
    cadena = @arguments
    return @save.save_list_s(@enviar) if cadena == IDENTIFIERS[:List_str]
    return @save.save_list_i(@enviar) if cadena == IDENTIFIERS[:List_int]
  end
end

Parser.new.detect_arguments

