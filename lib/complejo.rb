# Realizado por Juan Jose Gregorio Diaz Marrero y Miguel Aurelio Garcia Gonzalez

class Complejo

	attr_accessor :r, :m

	#I nicializamos
	def initialize(r, m)

		@r = r
		@m = m

	end 

	# Metodo para dar formato a los numeros complejos
	def to_s

		"(#{@r}, #{@m}i)"

	end

	# Metodo que suma dos numeros complejos
	def +(com2)

		Complejo.new(@r + com2.r, @m + com2.m).to_s

	end

	# Metodo que resta dos numeros complejos
	def -(com2)

		Complejo.new(@r - com2.r, @m - com2.m).to_s

	end

	# Metodo que multiplica un numero complejo por un escalar
	def &(a)

		Complejo.new(a * @r, a * @m).to_s

	end

	# Metodo que divide dos numeros complejos
	def /(com2)

		Complejo.new((@r * com2.r + @m * com2.m)/(com2.r * com2.r + com2.m * com2.m), (@m * com2.r - @r * com2.m) / (com2.r * com2.r + com2.m * com2.m)).to_s


	end

	# Metodo que multiplica dos numeros complejos
	def *(com2)

		Complejo.new(@r * com2.r - @m * com2.m, @r * com2.m + @m * com2.r).to_s

	end

end
