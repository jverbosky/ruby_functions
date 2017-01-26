# Function to add two numbers
# def add(num_1, num_2)
# 	if (num_1.is_a? Numeric) && (num_2.is_a? Numeric)
# 		return (num_1 + num_2 + additional).round(2)
# 	else
# 		return false
# 	end
# end

# Function to add an indefinite amount of numbers
# def add(*number)
# 	sum = 0
# 	number.each do |n|
# 		sum += n
# 	end
# 	return sum
# end

# Function to add an indefinite amount of numbers (and return false if a string is specified)
def add(*number)
  test_array = []
  sum = 0
  number.each do |n|
    if (n.class != Fixnum) && (n.class != Float)
      test_array.push(false)
    end
  end
  if test_array.length > 0
    return false
  else
    number.each do |n|
      sum += n
    end
  end
  return sum
end

# Sandbox testing
# puts add(2, 3, 5, 6, 7, 8, 100, 2, 4, 2)  # 139
# puts add(8.3, 9.7)  # 18.0
# puts add("a", 3)  # false
# puts add("a","b")  # false