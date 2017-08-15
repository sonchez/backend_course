def select_letter(string, letter)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == string.size
    current_char = string[counter]

    if current_char == letter
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

question = 'How many times does a particular character appear in this sentence?'
select_letter(question, 'a')
select_letter(question, 't')
select_letter(question, 'z')

alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end