def palindrome?(string)
  binding.pry
  string == string.reverse
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1,2,1]) == true
p palindrome?(['1','2','1']) == true
p palindrome?([[1],[2],[1]]) == true