def reverse_sentence(phrase)
  phrase = phrase.split
  finalphrase = []
  phrase.each do |word|
    if word.length >=5
      word = word.reverse
      finalphrase << word
    else
      finalphrase << word
    end
  end
finalphrase.join(' ')
end

puts reverse_sentence('Professional') 
puts reverse_sentence('Walk around the block') 
puts reverse_sentence('Launch School') 

