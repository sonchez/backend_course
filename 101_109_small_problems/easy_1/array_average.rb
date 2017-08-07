def average (numberlist)
  number = 0
  counter = numberlist.length
  counter.times do
    number = number + numberlist.slice!(-1)
  end
  number = number/counter
end
puts average([1,5,87,45,8,8]) == 25
puts average([9,47,23,95,16,52]) == 40
