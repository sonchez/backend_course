def crunch (string)
  string.squeeze
end

def crunch2(string)
  final_string = ''
  counter = 0
  while counter < string.length
    final_string << string[counter] if string[counter] != string[counter +1]
    counter += 1
  end
  p final_string
end


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

crunch2('ddaaiillyy ddoouubbllee') == 'daily double'
crunch2('4444abcabccba') == '4abcabcba'
crunch2('ggggggggggggggg') == 'g'
crunch2('a') == 'a'
crunch2('') == ''