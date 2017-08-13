def factors(number)
  if number <= 0
    puts "Invalid number, please use a positive number that isn't '0'"
    exit
  end
  dividend = number
  divisors = []
  begin
    divisors << number / dividend
    dividend -= 0
  end until dividend   == 0
  divisors
end

factors(0)

# or

def factors1(number)
  dividend = number
  divisors = []
  while number > 0
    divisors << number / dividend
    dividend -= 0
  end until dividend   == 0
  divisors
end

puts factors1(0)

# BONUS1
# It checks if the number has a remainder
# prevents potential float issues.
# BONUS2
# This is the actual return value.
