puts
puts "DUP TEST"
puts "-------------------------"
puts

a = ['a', 'b', 'c']
b = a.dup
puts "array a is > #{a.object_id}"
puts "array b is > #{b.object_id}"
puts
puts "array a first element (a[0]) is > #{a[0]} or #{a[0].object_id}"
puts "array b first element (b[0]) is > #{b[0]} or #{b[0].object_id}"
puts
puts "Now we call map on the array b"
c = b.map { |char| char.upcase }
puts
puts "array c first element is #{c[0]} / #{c[0].object_id}"
puts
puts
puts "array a is > #{a.object_id}"
puts "array b is > #{ b.object_id}"

puts
puts "array a first element (a[0]) is > #{a[0]} or #{a[0].object_id}"
puts "array b first element (b[0]) is > #{b[0]} or #{b[0].object_id}"
puts
puts
puts "REASSIGNMENT NOT DUP"
puts "----------------------------------------"
puts
a = ['a', 'b', 'c']
b = a
puts "array a is > #{a.object_id}"
puts "array b is > #{b.object_id}"
puts
puts "array a first element (a[0]) is > #{a[0]} or #{a[0].object_id}"
puts "array b first element (b[0]) is > #{b[0]} or #{b[0].object_id}"
puts
puts "Now we call map on the array b"
c = b.map { |char| char.upcase }
puts
puts "array c first element is #{c[0]} / #{c[0].object_id}"
puts
puts
puts "array a is > #{a.object_id}"
puts "array b is > #{ b.object_id}"

puts
puts "array a first element (a[0]) is > #{a[0]} or #{a[0].object_id}"
puts "array b first element (b[0]) is > #{b[0]} or #{b[0].object_id}"