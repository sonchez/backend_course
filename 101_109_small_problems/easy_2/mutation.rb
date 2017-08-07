array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# expected changes
# array1 = [Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo]
# array2 = [Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo]

# Array 1 is is used to push elements to array2
# This is done by calling the method of each on array1.
# the variable of value references each element in order.
# It keeps the references so the elements are copies of array1.
# Then pushes them into array2.

# The each method copies the references and objects.
# so any changes to array1 will happen to array2.
# Mutators mutate the objects so is the references are the same
# the changes will carry over.
