def swap (string)
  newstring = []
  string.split(" ").map do |word|
    switch1 = word[0]
    switch2 = word[-1]
    word[0] = switch2
    word[-1] = switch1
    newstring << word
  end
  p newstring.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'