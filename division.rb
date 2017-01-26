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
        (dividend.to_f / divisor.to_f).round(5)
      else
        return false
      end
    end
  end
end

# Sandbox testing
# puts divide(10, 2)  # 5
# puts divide(-18, -3)  # 6
# puts divide(-24, 8)  # -3
# puts divide(7, 0)  # false
# puts divide(0, 7)  # 0
# puts divide(1, 2, 3, 0, 4, 5, 6)  # false
# puts divide(22, 7)  # 3.14286
# puts divide(109)  # 109
# puts divide(0)  # 0
# puts divide()  # false
# puts divide("a", 3)  # false