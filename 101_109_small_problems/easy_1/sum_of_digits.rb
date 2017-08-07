def sum_of_digits(digits)
  num_array = []
  if digits > 0
    digit_array = digits.to_s.split(//)
    digit_array.each {|num| num_array << num.to_i }
    num_array = num_array.reduce(:+)
  end
end

puts sum_of_digits(23) == 5
puts sum_of_digits(496) == 19
puts sum_of_digits(123_456_789) == 45

