# Function to add two numbers

# Early version
# def add(num_1, num_2)
# 	if (num_1.is_a? Numeric) && (num_2.is_a? Numeric)
# 		return (num_1 + num_2 + additional).round(2)
# 	else
# 		return false
# 	end
# end

def add(*number)
	sum = 0
	number.each do |n|
		sum += n
	end
	return sum
end

# print add(2, 3, 5, 6, 7, 8, 100, 2, 4, 2)
# print add(8.3, 9.7)
# print add("a", 3)
# print add("a","b")
