require "pry"
def convert_to_signed(test_string,final_outcome)
  if test_string[0] == '-'
    final = final_outcome - (final_outcome*2)
  else
    final_outcome
  end
end

def string_to_signed_integer(string)
  counter_limit = string.length
  counter = 0
  newstring = string.chars
  total = 0

  while counter < counter_limit
  s_to_i = newstring[counter]

    case s_to_i
    when '-'
      counter +=1
      next
    when '+'
      counter += 1
      next
    when '0'
      total = 0+(total*10)
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
  convert_to_signed(string,total)
end



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100