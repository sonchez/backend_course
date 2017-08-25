
flintstones = %w(Fred Barney Wilma Betty Pebbles BamBam)
flintstones_hash = {}

flintstones.each_with_index do |word, num|
  flintstones_hash[word] = num
end

p flintstones_hash