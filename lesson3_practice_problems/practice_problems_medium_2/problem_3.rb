def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# string will return just "pumpkins"
# array will return ["pumpkins", "rutabaga"]
# << shovel is a mutator
# concencation with + is a method but not a mutator
# it creates a new string rather than simply adding to the previous one.
