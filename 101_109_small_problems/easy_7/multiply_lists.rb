def multiply_list(array1, array2)
  arraysum = []
  counter = 0
  while counter < array1.length
    arraysum << array1[counter] * array2[counter]
    counter += 1
  end
  p arraysum
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]