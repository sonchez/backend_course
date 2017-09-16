def interleave (string1, string2)
  final_array = Array.new
  until string1.length == 0
    final_array << string1.shift
    final_array << string2.shift
  end
  final_array
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']