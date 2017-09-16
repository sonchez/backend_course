def multiply_all_pairs(array1, array2)
  counter = 0
  productarray = Array.new
    array2.each_with_index do |letter, index|
      productarray << array1[counter] * array2[index]
      productarray << array1[counter+1] * array2[index]
    end
  productarray.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]