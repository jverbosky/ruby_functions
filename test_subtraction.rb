require "minitest/autorun"

require_relative "subtraction.rb"

class TestSubtraction < Minitest::Test

	def test_1_subtracting_integers
		results = subtract(1, 1)
		assert_equal(0, results)
	end

	def test_2_subtracting_floats
		results = subtract(5.32, 1.1)
		assert_equal(4.21, results)
	end

end