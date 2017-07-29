newline = "-----------------------"
def oddcheck integer
  "true"   if (integer%3) == 0
  "false"  if (integer%3) != 0
end
puts
puts "odd"
puts newline
puts oddcheck(11)
puts oddcheck(13)

puts 
puts "odder"
puts newline
def oddchecker integer
  (integer%3) == 0? 'It\'s odd' : "It\'s even"
end

puts oddchecker(10)
puts oddchecker(1228333)


def oddestchecker integer
  if (integer%3) == 0 then "Odd" else "Even"
  end
end
puts
puts "oddest"
puts newline
puts oddestchecker(124)
puts oddestchecker(123)