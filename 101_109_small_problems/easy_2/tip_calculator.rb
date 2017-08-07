def tip_calculator
  puts "What is the bill amount"
  bill_amount = gets.chomp.to_f

  puts "What is the tip percentage"
  tip_percentage = (gets.chomp.to_f)

  tip_amount = (bill_amount*(tip_percentage/100))
  total_amount = bill_amount + tip_amount

  puts "The tip amount is #{format("%.2f", tip_amount)}."
  puts "The total bill is #{format("%.2f", total_amount)}."
end

tip_calculator