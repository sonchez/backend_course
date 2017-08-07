def digit_seperator(number)
  numarray = []
  if number <= 0
    puts "Sorry negative numbers wont work!" 
  else
      number.to_s.split('').each {|numeral| numarray << numeral.to_i}
  end 
  numarray
end


puts digit_seperator(12345) == [1,2,3,4,5]
puts digit_seperator(7) == [7]
puts digit_seperator(375290) == [3,7,5,2,9,0]
puts digit_seperator(444) == [4,4,4]