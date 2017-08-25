def titleize (string)
  newstring = string.split(" ").map {|word| word.capitalize}.join(" ")
end

words = "the flintstones rock"

puts titleize(words)