def number_characters
  puts "Please write word or multiple words:"
  answer = gets.chomp.to_s

  characters = answer.split(" ").join("").chars.count
  # assignment answer
  # characters = answer.delete(' ').size

  puts "There are #{characters} in #{answer}"
end

number_characters