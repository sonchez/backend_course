def multisum(num)
  counter = 1
  total_array = []
  while counter <= num
    if counter%5 == 0 || counter%3 == 0
      total_array.push(counter)
      counter += 1
    else
      counter += 1
    end
  end
  p total_array.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168