def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => 'two'
puts "two is: #{two}" # => 'three'
puts "three is: #{three}" # => 'one'

# gsub! is a permanent mutator. As a result, when the results are passed to the method
# it doesnt reassign the strings. Instead it takes instructions from the block
# In this case it is being told, take the variable, and if
# this first string in the block is found. Replace it with the second string
# in the block.