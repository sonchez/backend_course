SEARCH_FUNCTION = [%r/[a-z]/,%r/[A-Z]/, %r/[^a-zA-Z]/ ]

def letter_case_count (string)
  newhash = {}
  type = 0
  count_hash = [[:lowercase, 0], [:uppercase, 0], [:neither,0]]
  3.times do
    count_hash[type][1] += string.scan(SEARCH_FUNCTION[type]).size
    type += 1
  end
  count_hash.to_h
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }