def reverse!(array)
  copyarray = array.dup
  arraylength = array.length
  holder = Array.new
  index_point = 0

  while index_point < arraylength
    holder = copyarray.pop
    array[index_point] = holder
    index_point += 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
p reverse!(list) # => []
p list == []