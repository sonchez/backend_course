def xor(even_one,even_two)
  if even_one == true && even_two == false
    true
  elsif even_one == false && even_two == true
    true
  else false
  end
end

puts xor(5.even?, 4.even?) == true
puts xor(5.odd?, 4.odd?) == true
puts xor(5.odd?, 4.even?) == false
puts xor(5.even?, 4.odd?) == false