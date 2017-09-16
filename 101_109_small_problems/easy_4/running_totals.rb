require 'pry'

def running_total(num_array)
  total = 0
  num_array.map { |num| total += num }
end


puts running_total([2, 5, 13]) == [2, 7, 20]
inject_total([2, 5, 13]) == [2, 7, 20]
