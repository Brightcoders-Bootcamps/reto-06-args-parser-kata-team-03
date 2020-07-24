# frozen_string_literal: true

# Imprimir datos
class PrintArguments
  def initialize; end

  def logging(enviar)
    puts enviar, 'Iniciando sesion en:',  ENV['USERDOMAIN'] 
  end

  def save_port(enviar)
    #Integer(enviar)
    #raises ArgumentError: invalid value for Integer(): enviar
    puts 'Entrando en puerto: ', enviar
  end

  def save_directory(enviar)
    puts 'Direccionando a: ', enviar
  end

  def save_list_s(enviar)
    #temp = enviar.split(',')
    puts 'Lista tipo String enviada'
    #temp.each_with_index do |i|
    #  puts temp[i]
    #end
  end

  def save_list_i(enviar)
    #temp = enviar.split(',')
    #Integer(temp)
    #raises ArgumentError
    puts 'Lista tipo Int enviada', enviar
  end
end
