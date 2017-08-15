def multiply_method(num_list, num)
  counter = 0
  loop do
    break if counter == num_list.size

    num_list[counter] *= num

    counter += 1
  end
  num_list
end

my_numbers = [1,4,3,7,2,6]

p multiply_method(my_numbers, 3) # => [3,12,9,21,6,18]