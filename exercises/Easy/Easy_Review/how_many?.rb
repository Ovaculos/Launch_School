vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(list)
  occurrences = {}

  list.uniq.each { |item| occurrences[item] = list.count(item) }

  occurrences.each { |item, number| puts "#{item} => #{number}" }
end

count_occurrences(vehicles)