arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
threearray = arr.map do |k|
  k.select {|integer| integer%3 == 0}
end

p threearray