def box_size(graphic1,graphic2, length)
  graphic1.insert(1,(graphic2* length))
end

def print_in_box(phrase)
  amount = phrase.length
  puts box_size("++",'-',amount)
  puts box_size("||",' ', amount)
  puts box_size("||",' ',amount)
  puts "|#{phrase}|"
  puts box_size("||",' ',amount)
  puts box_size("||",' ',amount)
  puts box_size("||",' ',amount)
  puts box_size("++",'-',amount)

end

print_in_box("So like what are your plan's later on?")