greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The variable greeting will have the string "hi there".
# This is because the reference id attached to the variable greetings
# is passed to the variable informal_greeting. Since informal_greeting
# is mutated by the shovel operator it changes the value of the object being referenced.
# mutators modify the original object. they do not create new copies.