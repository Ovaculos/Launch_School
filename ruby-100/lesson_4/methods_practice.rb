# Question 1

# Turn the array into a hash where the names are the keys and the values are the positions in the array

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hash = {}

# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# p flintstones_hash



# Question 2

# Add up all the ages from the ages hash

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# age_sum = 0

# ages.each_value { |value| age_sum += value }

# p age_sum



# Question 3

# Remove people with an age of 100 and greater

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.each do |name, age|
#   ages.delete(name) if age >= 100
# end

# or

# ages.delete_if { |name, age| age >= 100 }

# p ages



# Question 4

# Pick out the minimum age from the ages hash

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min



# Question 5

# Find the index of the first name that starts with 'Be'

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)



# Question 6



# Amend the array so that the names are all sahortened to just the first three characters

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! { |name| name[0, 3] }

# p flintstones



# Question 7

# Create a has that expresses the frequency with which each letter occurs in the string

# statement = "The Flintstones Rock"

# statement_chars = statement.chars.group_by { |letters| letters }

# statement_chars.each { |char, val| statement_chars[char] = val.count }

# p statement_chars

# Question 8

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# => 1 \n 3 because shift goes by index value

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# => 1 \n 2

# Loops iterate over the original object in real time, they don't iterate over a copy of the object



# Question 9

# Create a titleize method that capitalizes the first letter in each word of a string

# words = "the flintstones rock"

# def titleize(string)
#   new_string = ''
#   string.split.each { |word| new_string << word.capitalize + ' '}
#   new_string
# end

# or 

# def titleize(string)
#   string.split.map { |words| words.capitalize }.join(' ')
# end

# p titleize(words)

# Question 10

# Modify the hash such that each member of the family as an addition age_group key that has one of three values describing the age group of the munster

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# munsters["Herman"]['age_group'] = 'adult')

munsters.each do |name, data|
  case data["age"]
  when (0..17)
    data['age_group'] = 'kid'
  when (18..64)
    data['age_group'] = 'adult'
  else
    data['age_group'] = 'senior'
  end
end

p munsters == { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
"Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
"Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
"Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
"Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# p munsters
