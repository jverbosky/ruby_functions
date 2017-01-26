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

  def test_4_multiplying_with_zero
    results = multiply(1, 2, 3, 4, 5, 0, 6, 7, 8, 9, 10)
    assert_equal(0, results)
  end

  def test_5_single_argument_17
    results = multiply(17)
    assert_equal(17, results)
  end

  def test_6_single_argument_0
    results = multiply(0)
    assert_equal(0, results)
  end

  def test_7_no_argument
    results = multiply()
    assert_equal(false, results)
  end

  # Playing with a real calculator, product of floats has combined number of decimal places
  # Ex: 3.1 & 4.1 > two decimal places, 3.11, 4.11 > four decimal places
  def test_8_multiplying_floats_one_decimal_place
    results = multiply(3.1, 4.1)
    assert_equal(12.71, results)
  end

  def test_9_multiplying_floats_two_decimal_places
    results = multiply(3.11, 4.11)
    assert_equal(12.7821, results)
  end

  def test_10_multiplying_an_integer_and_a_float
    results = multiply(3.526, 9)
    assert_equal(31.734, results)
  end

  def test_11_fail_on_non_numbers
    results = multiply("a", 3)
    assert_equal(false, results)
  end

  def test_12_passing_more_than_2_integers
    results = multiply(1, 2, 3, 4, 5)
    assert_equal(120, results)
  end

  def test_13_passing_more_than_2_floats
    results = multiply(1.1, 2.2, 3.3, 4.4, 5.5)
    assert_equal(193.26120, results)
  end

end