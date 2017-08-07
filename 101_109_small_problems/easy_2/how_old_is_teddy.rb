def teddy_age
  puts "What is your name?"
  name = gets.chomp
  if name.empty?
    name = 'Teddy'
  end
  puts "#{name} is #{rand(20..200)}"
end

teddy_age