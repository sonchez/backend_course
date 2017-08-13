
# the limit variable is not within the scope of the method.
# Unless the method calls the variable as an argument, it cannot
# enter the scope of the method.

# solution below

limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"