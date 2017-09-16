def gregorian_leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

def julian_leap_year?(year)
  year%4 == 0
end

def leap_year?(year)
  if year <= 1752
    julian_leap_year?(year)
  else
    gregorian_leap_year?(year)
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# historically the incans did not use the juliian and gregorian systems.
# they changed to the julian calendar when conquered.
# From what information I have, they did not recognize the idea
# of leap years within their solar and lunar calendars.
# the establishment of mexico and its possesion as
#a spanish colony meant the change happened on oct 15th, 1582 (gregorian calendar)
#the change to gregorian functionally changed the date from
# oct 4th, 1582. A 10 day adjustment.