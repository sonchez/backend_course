advice = "few things in life are as important as house training your pet dinosaur."
returnvalue = advice.slice!(0..38)
puts returnvalue
puts advice

advice = "few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))