def find_fibonacci_index_by_length(numlength)
  fibarray = [0,1]
  num1 = 0
  num2 = 1
  until num2.to_s.length == numlength
   num1, num2 = num2,(num1+num2)
   fibarray << num2
  end
  fibarray.index(num2)
end



p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847