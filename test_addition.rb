require "minitest/autorun"

require_relative "addition.rb"


class TestAddition < Minitest::Test

	def test_1_plus_1_equals_2
		results = add(1, 1)
		assert_equal(2, results)
	end

	def test_2_plus_3_equals_5
		results = add(2, 3)
		assert_equal(5, results)
	end

	def test_3_adding_floats
		results = add(1.3, 4.5)
		assert_equal(5.8, results)
	end

	def test_5_adding_floats_with_varying_number_of_decimals
		results = add(1.3, 4.51)
		assert_equal(5.81, results)
	end

	def test_6_fail_on_non_numbers
		results = add("a", "b")
		assert_equal(false, results)
	end

	def test_7_1_minus_1_equals_0
		results = subtract(1, 1)
		assert_equal(0, results)
	end

end