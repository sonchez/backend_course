arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
testhash = {}
arr.each do |array|
  testhash[array[0]] = array[1]
end
p arr
puts "-------------"
p testhash