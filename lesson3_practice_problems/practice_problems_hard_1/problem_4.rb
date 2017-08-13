def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.count != 4

  while dot_separated_words.count > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end

   true
end