def artithmetic_integer
  puts "Enter the first number:"
  answer1 = gets.chomp.to_f
  puts "Enter the second number:"
  answer2 = gets.chomp.to_f

  puts "#{answer1} + #{answer2} = #{answer1 + answer2}"
  puts "#{answer1} - #{answer2} = #{answer1 - answer2}"
  puts "#{answer1} * #{answer2} = #{answer1 * answer2}"
  puts "#{answer1} / #{answer2} = #{answer1 / answer2}"
  puts "#{answer1} % #{answer2} = #{answer1 % answer2}"
  puts "#{answer1} ** #{answer2} = #{answer1 ** answer2}"
end
artithmetic_integer