def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# This is almost the reverse of the last question.
# This time the shovel operator is pushing the string unto the old string.
# It does this as a permanent mutator.
# When the method tries to modify the variable an_array_param
# It does so by changing the array in the local variable.
# however this is a local variable is not permanently mutated.
# It is simply changed within the scope of the method.
# Once outside the method, the original outer scope variable remains the same.