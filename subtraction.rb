# Function to subtract two numbers
def subtract(num_1, num_2)
	if (num_1.is_a? Numeric) && (num_2.is_a? Numeric)
		return (num_1 - num_2).round(2)
	else
		return false
	end
end

# Function to add an indefinite amount of numbers



# Sandbox testing
# print subtract(3, 2)
# print subtract(7.1, 3.18)
# print subtract("string", 5)