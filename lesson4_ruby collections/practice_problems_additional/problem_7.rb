statement = "The Flintstones Rock"
flintstone_hash = {}

statement = statement.downcase.split("")
statement.each do |letter|
  if flintstone_hash.include?(letter)
    flintstone_hash[letter] += 1
  else
    flintstone_hash[letter] = 1
  end
end

puts flintstone_hash