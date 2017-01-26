# Function to multiply an indefinite amount of numbers

# Rewrote add function for multiplication
# Had to start with the product at 1 for the .each loop to work properly
# Will need to tweak this if one of the numbers is zero
def multiply(*number)
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
      product *= n
    end
  end
  return product
end

# Sandbox testing
# puts multiply(10, 15)  # 150
# puts multiply(-8, -9)  # 72
# puts multiply(-11, 7)  # -77
# puts multiply(4, 13, 0, 23, 9)  # 0
#puts multiply(8.3, 9.7)
#puts multiply("a", 3)