numbers = [1,2,2,3]
numbers.uniq
puts numbers

# expected output

# 1
# 2
# 2
# 3

# => [1,2,2,3]
# the method of uniq is not a permanent mutator.
# it returns a new array.