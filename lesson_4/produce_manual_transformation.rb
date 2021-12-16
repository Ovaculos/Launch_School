produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(list)
  produce_keys = list.keys
  selected_fruits = {}
  counter = 0

  loop do 
    break if counter == produce_keys.size
    
    current_key = produce_keys[counter]
    current_value = list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p produce