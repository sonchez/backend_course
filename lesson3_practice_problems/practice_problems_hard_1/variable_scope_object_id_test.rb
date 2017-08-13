a = 24
puts a.object_id

if true
  puts a.object_id
end

def method_test (variable)
  variable = 42
  variable.object_id
end

puts method_test(a)

puts a.object_id
