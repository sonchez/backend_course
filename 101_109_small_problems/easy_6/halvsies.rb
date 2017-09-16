def halvsies(array)
  secondarray = []
  first_array_length = ((array.length.to_f)/2).ceil
  secondarray = array.slice!(0..first_array_length-1)
  p [secondarray] + [array]

end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
halvsies([]) == [[], []]