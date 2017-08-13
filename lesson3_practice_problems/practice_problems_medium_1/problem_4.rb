def rollingbuffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The main difference between the two method is the use of the + method
# and the shovel operator
# The shovel operator adds the  element to the end of an exisiting array
# the + method creates a new array rather then appending to the oringinal
# using the + method or "concecating" can inadeventently create nested arrays
# This may not be what the user intends
# for example if i had array1, array2 and array 3
# and performed array1 + array2 + array3
# it would be evaluated as (array1 + array2) + array 3
# this would cause nested arrays which is not what we want.