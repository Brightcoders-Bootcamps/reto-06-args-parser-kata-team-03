require_relative 'args_print.rb'

#Clase para ver que se cumpla bien la sintaxs
class DetectData
	def initialization; end
	def evalue_port(enviar)
	  raise ArgumentError.new(
      "Expected as integer got string"
    ) if is_number? (enviar)
		puts 'Entrando en puerto: ', enviar
	end

	def is_number? (enviar)
    true if Integer(enviar) 
      print " " 
    rescue false 
	end

	def separe(enviar)
		temp = enviar.split(',')
		#print "separacion \n"
		temp.each do |c|
			#puts c 
			enviar = temp[0][c]
			is_number? (enviar)
		end
		#print temp
	end

end