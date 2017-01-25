# Function to add two numbers

def add(num_1, num_2)
	if (num_1.is_a? Numeric) && (num_2.is_a? Numeric)
		return (num_1 + num_2).round(2)
	else
		return false
	end
end

# print add(2, 3)
# print add(8.3, 9.7)
# print add("a", 3)
# print add("a","b")
