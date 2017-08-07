

def number_odd
  number = 1
  while true
    puts number if number.odd?
    number = number + 1
    break if number == 100
  end
end


def array_odd
  num_range = (1..99)
  puts num_range.select {|num| num.odd?}
end



def math_odd
  num_range = (1..99)
  new_range = num_range.select {|num| num%2==1}
  puts new_range
end

number_odd
puts
array_odd
puts
math_odd
puts