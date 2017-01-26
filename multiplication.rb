# Function to multiply an indefinite amount of numbers

def multiply(*number)
  test_array = []
  decimal_places = 0
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
        # If a number is a float, accumulate the number of decimal places
        decimal_places += n.to_s.split('.').last.size
        product *= n
      else
        product *= n
      end
    end
  end
  return product.round(decimal_places)
end

# Sandbox testing
# puts multiply(10, 15)  # 150
# puts multiply(-8, -9)  # 72
# puts multiply(-11, 7)  # -77
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