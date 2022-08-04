# def buy_fruit(list)
#   result = []
#   list.each { |item| item[1].times { result << item[0]} }
#   result
# end

# def buy_fruit(list)
#   expanded_list = []
#   list.each do |item|
#     fruit, quantity = item[0], item[1]
#     quantity.times { expanded_list << fruit }
#   end
#   expanded_list
# end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas", "bananas"]