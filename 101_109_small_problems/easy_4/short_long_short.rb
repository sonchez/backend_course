def short_long_short(string1,string2)
   if string1.size > string2.size
    bigger = string1
    smaller = string2
  else
    bigger = string2
    smaller = string1
  end
  smaller + bigger + smaller
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"