require "minitest/autorun"

require_relative "addition.rb"


class TestAddition < Minitest::Test

	def test_1_plus_1_equals_2
		#results = add(1, 1)  # Another way to seed test
		assert_equal(2, add(1,1))
	end

	def test_2_plus_3_equals_5
		assert_equal(5, add(2,3))
	end

end