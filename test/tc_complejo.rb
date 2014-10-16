#Realizador por : Juan José Gregorio Díaz Marrero y Miguel Aurelio García González
require "../lib/complejo.rb"
require "test/unit"

class Test_Complejo < Test::Unit::TestCase

	def test_simple

		assert_equal("(8, 5i)", Complejo.new(8, 5).to_s)
		assert_not_equal("(7, 15i)", (Complejo.new(3, 4) + Complejo.new(5, 16)).to_s)
		assert_equal("(-2, -12i)", (Complejo.new(3, 4) - Complejo.new(5, 16)).to_s)
		assert_not_equal("(5, 4i)", (Complejo.new(3, 4) * Complejo.new(5, 16)).to_s)
		assert_equal("(-1, 3i)", (Complejo.new(4, 8) / Complejo.new(2, -2)).to_s)
		assert_equal("(40, 80i)", (Complejo.new(4, 8) & 10))
	end

	def test_failure
		assert_equal("(4, 2i)", Complejo.new(8, 5).to_s)
	end
end
