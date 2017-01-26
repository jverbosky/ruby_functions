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
    number.each do |n|
      if n.class == Float
        number.inject do |dividend, divisor|
          (dividend / divisor).round(5)
        end
      else
        number.inject do |dividend, divisor|
          (dividend / divisor).round(0)
        end
      end
    end
  end
end

# Sandbox testing
puts divide(10, 2)  # 5
puts divide(-18, -3)  # 6
puts divide(-24, 8)  # -3

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