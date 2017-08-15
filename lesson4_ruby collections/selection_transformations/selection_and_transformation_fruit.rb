def select_fruit(produce)
  counter = 0
  selected_fruit = {}
  produce_list = produce.keys

  loop do
    produce_key = produce_list[counter]
    produce_value = produce[produce_key]

    if produce[produce_key] == "Fruit"
      selected_fruit[produce_key] = produce_value
    end

    counter += 1
    break if counter == produce_list.size
  end
  selected_fruit
end

def my_method(produce)
  produce.select {|k,v| v == "Fruit"}
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => "Vegetable"
}

puts select_fruit(produce) # => {'apple' => "Fruit", 'pear' => "fruit"}
puts my_method(produce)