require 'pry'
fizzbuzzhash = {fizz: 3, buzz: 5}.freeze
range1 = (1..100)
fizzbuzzhash.each_with_object(+'') do |(key,value), word|
  for i in range1
    if i % value == 0
      word <<  key.to_s
    end
    word << i
  end
  puts word
end