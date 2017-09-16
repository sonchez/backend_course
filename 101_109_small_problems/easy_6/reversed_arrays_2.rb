def reverse(array)
  copyarray = array.dup
  arraylength = array.length
  reverseindex = array.length-1
  holder = Array.new
  index_point = 0

  while index_point < arraylength
    holder = array[reverseindex]
    copyarray[index_point] = holder
    index_point += 1
    reverseindex -= 1
  end
  copyarray
end



p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true
puts "------"
p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
