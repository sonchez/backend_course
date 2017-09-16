def searching_101
  arr = []
  puts "Enter the first number"
  answer = gets.chomp.to_i
  arr.push(answer)
  puts "Enter the second number"
  answer = gets.chomp.to_i
  arr.push(answer)
  puts "Enter the third number"
  answer = gets.chomp.to_i
  arr.push(answer)
  puts "Enter the fourth number"
  answer = gets.chomp.to_i
  arr.push(answer)
  puts "Enter the fifth number"
  answer = gets.chomp.to_i
  arr.push(answer)
  puts "Enter the sixth number"
  answer = gets.chomp.to_i
  puts
  puts arr.include?(answer) ? "#{answer} is in the list #{arr}!" : "#{answer} is not in the list #{arr}."
end

searching_101