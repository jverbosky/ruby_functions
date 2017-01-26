# Test for multiplication.rb

require "minitest/autorun"
require_relative "multiplication.rb"

class TestMultiplication < Minitest::Test

  def test_1_multiplying_two_positive_integers
    results = multiply(2, 3)
    assert_equal(6, results)
  end

  def test_2_multiplying_two_negative_integers
    results = multiply(-2, -4)
    assert_equal(8, results)
  end

  def test_3_multiplying_one_positive_and_one_negative_integer
    results = multiply(3, -4)
    assert_equal(-12, results)
  end

  # def test_2_subtracting_floats
  #   results = subtract(5.32, 1.1)
  #   assert_equal(4.22, results)
  # end

  # def test_3_fail_on_non_numbers
  #   results = subtract("a", 3)
  #   assert_equal(false, results)
  # end

  # def test_4_passing_more_than_2_parameters
  #   results = subtract(25, 13, 5)
  #   assert_equal(7, results)
  # end

end