def staggered_case(string)
  newstring = []
  index = 0
  while index < string.length
    if index%2 == 0
      newstring << string[index].capitalize
    else
      newstring << string[index].downcase
    end
  index += 1
  end
  p newstring.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'