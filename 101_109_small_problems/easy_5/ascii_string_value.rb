def ascii_value(string)
  return 0 if string == ''
  letters = string.split("")
  letters.map {|let| let.ord}.inject(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


char = 'a'
p char.ord.chr == char