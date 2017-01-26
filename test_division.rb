# Test for division.rb

require "minitest/autorun"
require_relative "division.rb"

class TestDivision < Minitest::Test

  def test_1_dividing_two_positive_integers
    results = divide(6, 3)
    assert_equal(2, results)
  end

  def test_2_dividing_two_negative_integers
    results = divide(-12, -2)
    assert_equal(6, results)
  end

  def test_3_dividing_one_positive_and_one_negative_integer
    results = divide(20, -4)
    assert_equal(-5, results)
  end

  def test_4_dividing_by_zero
    results = divide(1, 0)
    assert_equal(false, results)
  end

  def test_5_zero_as_divisor
    results = divide(0, 1)
    assert_equal(0, results)
  end

  def test_6_dividing_multiple_integers
    results = divide(100, 5, 4, 2)
    assert_equal(2.5, results)
  end

  def test_7_dividing_multiple_integers_with_zero_as_dividend
    results = divide(88, 2, 0, 11)
    assert_equal(false, results)
  end

  def test_8_rounding_a_long_quotient
    results = divide(22, 7)
    assert_equal(3.14286, results)
  end

  def test_9_single_argument_17
    results = divide(17)
    assert_equal(17, results)
  end

  def test_10_single_argument_0
    results = divide(0)
    assert_equal(0, results)
  end

  def test_11_no_argument
    results = divide()
    assert_equal(false, results)
  end

  def test_12_fail_on_non_numbers
    results = divide("a", 3)
    assert_equal(false, results)
  end

  # Used a real calculator to come up with the assert_equal value
  # and rounded up at the fifth decimal place (6.169575677808697)
  def test_13_multiple_integers_and_floats
    results = divide(284.182, 3.2, 19, 0.01928, 39.2944)
    assert_equal(6.16958, results)
  end

end