loop do
  number = rand(1..10)
  puts 'Hello!'
  if number == 5
    puts "Exiting..."
    break
  end
end

# This program will loop. First it will establish that the variable number will hold
# a randomly decided number between the range of 1..10.
# it will output the "Hello" string at least once.
# These actions will be performed every loop until the program ends.(breaks)
# It will then perform the if/end block. This will check if the variable "number"
# is equivelant to the integer 5. If the variable is the same, it will perform
# the break command and end the program. Otherwise the loop will continue
# until the condition is met.


colors = %w(green blue purple orange)
counter = 0

loop do
  break if counter == colors.size
  puts "I'm the color #{colors[counter]}"
  counter += 1
end

# the program will start with an index of 0. Meaning the puts statement
# will output the colors in order. At the beginning of each loop
# the program will check the if modifier to see if the conditions are met.
# If the size of the array is equal to the counter integer. than the program breaks
# before it can start the net loop.