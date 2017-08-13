
string = "The Flinstones Rock!"
adjustment = string.length
10.times do
puts string.rjust(adjustment)
adjustment = adjustment + 1
end
