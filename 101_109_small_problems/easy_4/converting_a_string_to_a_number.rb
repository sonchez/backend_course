def string_convert(string)
  counter_limit = string.length
  counter = 0
  string = string.chars
  total = 0

  while counter < counter_limit
  s_to_i = string[counter]

    case s_to_i
    when "1"
      total = 1+(total*10)
    when '2'
      total = 2+(total*10)
    when '3'
      total = 3+(total*10)
    when '4'
      total = 4+(total*10)
    when '5'
      total = 5+(total*10)
    when '6'
      total = 6+(total*10)
    when '7'
      total = 7+(total*10)
    when '8'
      total = 8+(total*10)
    else total = 9+(total*10)
    end
    counter += 1
  end
  p total
end

p string_convert('12345') == 12345
