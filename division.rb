# Function to divide an indefinite amount of numbers

def divide(*number)
  test_array = []
  product = 1
  if number.length == 0
    test_array.push(false)
  end
  number.each do |n|
    if (n.class != Fixnum) && (n.class != Float)
      test_array.push(false)
    end
  end
  if test_array.length > 0
    return false
  else
    number.inject do |dividend, divisor|
      if divisor != 0
        dividend / divisor
      else
        return false
      end
    end
  end
end

# Sandbox testing
puts divide(10, 2)  # 5
puts divide(-18, -3)  # 6
puts divide(-24, 8)  # -3
puts divide(7, 0)  # false
puts divide(0, 7)  # 0
puts divide(1, 2, 3, 0, 4, 5, 6)  # false
puts divide(22, 7)  # should be 3.14285, but returning 3...


# puts multiply(4, 13, 0, 23, 9)  # 0
# puts multiply(5)  # 5
# puts multiply(0)  # 0
# puts multiply()  # false
# puts multiply(5.2, 8)  # 41.6
# puts multiply(3.1, 4.1)  # 12.71
# puts multiply(3.11, 4.11)  # 12.7821
# puts multiply("a", 3)  # false
# puts multiply(3, 5, 7, 9, 11)  # 10,395
# puts multiply(2.2, 4.4, 6.6, 8.8)  # 562.2144