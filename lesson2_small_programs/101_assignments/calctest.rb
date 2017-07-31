def float_checker?(num)
  Float(num.to_f) == true
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f <= 0 == true
end

p valid_number?('-100')


p float_checker?('dog')

puts '-100'.to_i

p -100.00 >= 0