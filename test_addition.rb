require "minitest/autorun"

require_relative "addition.rb"


class TestAddition < Minitest::Test

	def test_1_plus_1_equals_2
		results = addition(1, 1)
		assert_equal(2, results)
	end

end