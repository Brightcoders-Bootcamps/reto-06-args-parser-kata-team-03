# frozen_string_literal: true

require_relative 'detect_data.rb'
require_relative 'save_data.rb'

# Imprimir datos
class PrintArguments
  attr_reader :detect

  def initialize
    @detect= DetectData.new
    @data = AllData.new
  end

  def logging(enviar)
    puts enviar, 'Iniciando sesion en:',  ENV['USERDOMAIN']
  end

  def save_port(enviar)
    @detect.evalue_port(enviar)
    @data.port = enviar
  end

  def save_directory(enviar)
    puts 'Direccionando a: ', enviar
    @data.dir = enviar
  end

  def save_list_s(enviar)
    @detect.separe(enviar)
    puts 'Lista tipo String enviada'
    @data.list_s = enviar
  end

  def save_list_i(enviar)
    @detect.separe(enviar)
    puts 'Lista tipo Int enviada', enviar
    @data.list_i = enviar
  end
end
