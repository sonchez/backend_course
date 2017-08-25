arr = ['10', '11', '9', '7', '8']
c = arr.sort do |a,b|
  b.to_i <=> a.to_i
end

# the return will be the item list sorted descendingly.
# setting the method as sort will return a new array.
# concurrently, the variables block changes the elements to Integers,
# but only for the purposes of the block. There are no reassignments
# or mutations.
# This means the values can be properly compared.
