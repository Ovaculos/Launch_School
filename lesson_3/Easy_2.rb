# Question 1

# Check if Spot is present in this hash of peoples names and their respective ages

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.include?('Spot')

# or 

# p !!ages.fetch('Spot', false)

# or

# p ages.key?('Spot')



# Question 2

# Convert the string into the 4 variations shown, code is run on original string

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# munsters_description = "The Munsters are creepy in a good way."

# p munsters_description.swapcase
# p munsters_description.capitalize
# p munsters_description.downcase
# p munsters_description.upcase

# add ! at end of each to actually change the variable



# Question 3

# Add Marilyn and Spot to the Munster family (age hash)

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# p ages.merge!(additional_ages)



# Question 4

# See if the name 'Dino' appears in the string

# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.match?(/Dino/)

# or 

# p advice.include? 'Dino'



# Question 5

# Write this array an easier way

# p flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# p flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)



# Question 6

# How can you add the pet, 'Dino', to our usual array

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones << 'Dino'



# Question 7

# How can you add Dino and Hoppy to the array?

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.concat(%w(Dino Hoppy))

# or

# flintstones.push('Dino').push('Hoppy')

# p flintstones



# Question 8

# Shorten the sentence to have advice be 'house training your pet dinosaur', but the return value is 'Few things in life are as important as '

# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.slice!(0..38)
# p advice

# or 

# p advice.slice(0..38)
# p advice.slice(39..)
# when not mutating the original string, you must find the range, if using that, of the rest of the string you want to return, like I did.



# Question 9

# Write a one-liner to count the number of lower-case 't' characters in the string

# statement = "The Flintstones Rock!"

# p statement.count('t')



# Question 10

# title = "Flintstone Family Members"

# p title.center(40)