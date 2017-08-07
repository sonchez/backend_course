def number_even
  number = 1
  while true
    puts number if number.even?
    number = number + 1
    break if number == 100
  end
end


def array_even
  num_range = (1..99)
  puts num_range.select {|num| num.even?}
end



def math_even
  num_range = (1..99)
  new_range = num_range.select {|num| num%2==0}
  puts new_range
end

number_even
puts
array_even
puts
math_even
puts