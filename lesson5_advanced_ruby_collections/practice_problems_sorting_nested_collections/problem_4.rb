arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


arr1[1][1] += 1
p arr1
puts "------"
arr2[2] += 1
p arr2
puts " -----------"
hsh1[:first][2][0] += 1
p hsh1
puts "----------"
hsh2[['a']][:a][2] += 1
p hsh2