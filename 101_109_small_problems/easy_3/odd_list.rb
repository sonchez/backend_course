def oddities(array)
  arr = []
  counter = 0
  while counter < array.length
    arr.push(array[counter])
    counter += 2
  end
  arr
end

def eventies(array)
  arr = []
  counter = 1
  while counter < array.length
    arr.push(array[counter])
    counter += 2
  end
  arr
end

def oddities_revision(array)
  arr = []
  arr = array.select {|x| array.index(x).even? }
  arr
end

def oddities_revision_two(array)
arr = []
array.each_with_index {|element,indexer| indexer.even? ? arr.push(element) : nil  }
arr.compact
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
puts "evens now"
puts "--------"
p eventies([2, 3, 4, 5, 6]) == [3, 5]
p eventies(['abc', 'def']) == ['def']
p eventies([123]) == []
p eventies([]) == []
puts "alternate_one"
p oddities_revision([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_revision(['abc', 'def']) == ['abc']
p oddities_revision([123]) == [123]
p oddities_revision([]) == []
puts "alternate_two"
p oddities_revision_two([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_revision_two(['abc', 'def']) == ['abc']
p oddities_revision_two([123]) == [123]
p oddities_revision_two([]) == []