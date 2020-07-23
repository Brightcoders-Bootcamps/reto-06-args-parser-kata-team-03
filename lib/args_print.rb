# frozen_string_literal: true

# Imprimir datos
class PrintArguments
  def initialize; end

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
    puts 'Lista tipo String enviada', enviar
  end

  def save_list_i(enviar)
    puts 'Lista tipo Int enviada', enviar
  end
end
