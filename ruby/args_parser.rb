# frozen_string_literal: true


class Parser
  attr_accessor :arguments
  IDENTIFIERS = { Log_in: '-l',
                   Port: '-p',
                   Directory: '-d'
	 }
	 
  def save_arguments
    for i in 0 ... ARGV.length
			puts "#{i} #{ARGV[i]}"
			@arguments =ARGV[i]
			get_flags
    end
	end 

	def get_flags
		@arguments == IDENTIFIERS[:Log_in] ? imprimir : ""
		@arguments == IDENTIFIERS[:Port] ? imprimir : ""
		@arguments == IDENTIFIERS[:Directory] ? imprimir : ""

	end

	def imprimir
		print" Identificador ",@arguments ," : ", @arguments , "\n"
	end 
end

prueba = Parser.new
prueba.save_arguments
