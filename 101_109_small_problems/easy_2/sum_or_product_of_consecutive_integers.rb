puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compte the product."
response = gets.chomp.downcase

if response == 's'
  sum = (1..integer).inject(:+)
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
elsif response == 'p'
  product = (1..integer).inject(:*)
  puts "The product of the integers between 1 and #{integer} is #{product}"
end