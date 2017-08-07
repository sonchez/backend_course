def retire_calc

  current_year = Time.new.year

  puts "What is your age?"
  age = gets.chomp.to_i

  puts "What age would you like to retire?"
  retire_age = gets.chomp.to_i

  years_needed = retire_age - age
  retire_year = years_needed + current_year

  puts "It is #{current_year}. You will retire in #{retire_year}!"
  puts "You only have #{years_needed} years of work to go!"
end

retire_calc

