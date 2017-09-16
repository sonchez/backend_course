def merge(array1,array2)
  array1.each_with_object(array2) {|num1, array2| array2 << num1}.sort.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]