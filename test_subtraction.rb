require "minitest/autorun"

require_relative "subtraction.rb"

class TestSubtraction < Minitest::Test

	def test_1_subtracting_integers
		results = subtract(1, 1)
		assert_equal(0, results)
	end

	def test_2_subtracting_floats
		results = subtract(5.32, 1.1)
		assert_equal(4.22, results)
	end

	def test_3_fail_on_non_numbers
		results = subtract("a", 3)
		assert_equal(false, results)
	end

end