# Function to subtract two numbers
# def subtract(num_1, num_2)
# 	if (num_1.is_a? Numeric) && (num_2.is_a? Numeric)
# 		return (num_1 - num_2).round(2)
# 	else
# 		return false
# 	end
# end

# Function to add an indefinite amount of numbers
# Tried using same code as addition (with tweaks) but no luck
# getting it to work with .each and negative numbers
# so researched and rewrote using .inject
def subtract(*number)
  test_array = []
  number.each do |n|
    if (n.class != Fixnum) && (n.class != Float)
      test_array.push(false)
    end
  end
  if test_array.length > 0
    return false
  else
    number.inject do |minuend, subtrahend|
      (minuend - subtrahend).round(2)
    end
  end
end

# Sandbox testing
puts subtract(3, 2)
puts subtract(7.1, 3.18)
puts subtract("string", 5)
puts subtract(100, 50, 27)
puts subtract(5, -10)
puts subtract(5, -10, 20)