require 'pry'
def century(year)
  century = (year.to_f/100).ceil.to_s
  century + ordinal_indicator(century)
end

def ordinal_indicator(num)
  ordinal = num.split(//).last(2).join.to_i
  return "th" if [11,12,13].include?(ordinal)

  ordinal = num.split(//).last(1).join.to_i
  case ordinal
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
end



p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
