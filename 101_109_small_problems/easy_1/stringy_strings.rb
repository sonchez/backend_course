#the hard way I learned from the book
def stringy (number)
  binarynum = "1"
  if number %10 == 0
    binarynum = binarynum + "010101010"
  elsif number %9 ==0
    binarynum = binarynum + "01010101"    
  elsif number %8 == 0
        binarynum = binarynum + "0101010"
  elsif number %7 ==0
        binarynum = binarynum + "010101"
  elsif number %6==0
        binarynum = binarynum + "01010"
  elsif number %5==0
        binarynum = binarynum + "0101"
  elsif number %4==0
        binarynum = binarynum + "010"
  elsif number %3==0
        binarynum = binarynum + "01"
  elsif number %2==0
        binarynum = binarynum + "0"
  elsif number %1==0
        binarynum
  end  
  
end

#"solve for immediate question answer"
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts



#easier way after thinking about it for a bit :)
def stringy2 (number)
  binarynum = ''
  amount = number
  counter = true
  amount.times do   
    if counter == true
      binarynum = binarynum +'1'
      counter = false
    else
      binarynum = binarynum + '0'
      counter = true
    end  
  end  
  binarynum.to_s
end 

 #"scalable method answer"
puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'
