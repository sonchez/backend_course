def room_size
  puts 'what is the length of the room in feet?'
  feet_length = gets.chomp.to_f
  puts "What is this width of the room in feet?"
  feet_width = gets.chomp.to_f
  feet_sq = feet_length*feet_width
  inch_sq = (feet_sq*144)
  cent_sq = (inch_sq*6.4516)
  puts "The area of the room is #{feet_sq} square feet,
  #{inch_sq} square inches and #{cent_sq} square centimeters."
end

room_size