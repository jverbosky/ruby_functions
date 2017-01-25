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

	def test_3_fail_on_non_numbers
		results = add("a", 3)
		assert_equal(false, results)
	end


end