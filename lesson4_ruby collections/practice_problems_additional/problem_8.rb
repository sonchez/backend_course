numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
  p numbers
end

# => 1
# => 3
 # The each methods iterates over each element in order.
 # The first output is at index 0. This element is removed
 # by the shift method.
 # The each method iterates again. This time at index 1
 # because the array was modified to be [2,3,4] it does not
 # iterate over Integer 2. Instead it focuses on the element
 # at index 1. Which is integer 3. This means it outputs 3 before removing
 # 2 from the front of the array.
  numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# This functions similarly, except pop mutates by removing from the end
# of the array. As a result, the ouputs are simply 1 and 2 since
# the the array mutations limit the each method to two iterations.
