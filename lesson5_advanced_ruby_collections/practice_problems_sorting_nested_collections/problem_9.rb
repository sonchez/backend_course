arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
sortedlist = arr.map do |array|
  array.sort {|a,b| a <=> b}
end
p sortedlist