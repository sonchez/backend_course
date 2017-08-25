arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
c = arr.sort_by do |array|
  array.select do |num|
    num.odd?
  end
end

p c