# Question 1

# What do you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# 1 \n 2 \n 2 \n 3. numbers.uniq is returning an array that is not outputted, and does not mutate. So, puts numbers is going to output the array it's assigned to at the beginning



# Question 2

# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios

# ! will return the reverse truthiness of an object
# ? is a tenary operator
# !=, 'not equals', is an operator that will compare two objects and return true if they are not the same, false if they are, opposite of ==, 'equals'
# !user_name will make user_name return the opposite boolean of whatever it is. False if it's an actual username. True if it's nil, or false for some reason.
# ! after a method call, like in words.uniq! will usually make the method mutate whatever it's being called on (this is the case with #uniq!), but this isn't always true, it's just an indicator
# ? before something, a single character seems to just return the character
# ? after something, like a method will indicate that the method returns a boolean value
# !! before something will return a double negative check on the truthiness of whatever object you call it on. (truthy values will remain truthy, vice versa). Will also make whatever you call it on to return the boolean



# Question 3

# Replace the word "important" with "urgent" in this string:

# advice = "Few things in life are as important as house training your pet dinosaur."

# puts advice.gsub!("important", "urgent")



# Question 4

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

# numbers = [1, 2, 3, 4, 5]

# numbers.delete_at(1)
# numbers.delete(1)

# numbers.delete_at(1) will delete the object at the index 1, which in this case, is 2. Returns deleted object.
# numbers.delete(1) will delete the number 1. Returns deleted object.

# Question 5

# Show two different ways to put the expected "Four score and" in front of this string:

# famous_words = "seven years ago..."

# famous_words.insert(0, 'Four score and ')
# famous_words.prepend('Four score and ')
# 'Four score and ' << famous_words
# 'Four score and ' + famous_words
# 'Four score and '.concat(famous_words) # and a billion other ways



# Question 7

# Un-nest the flintstones array

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# flintstones.flatten!



# Question 8

# Turn this hash into an array with the elements: Barney's name and Barney's number

# flintstones = {
#   "Fred" => 0,
#   "Wilma" => 1,
#   "Barney" => 2,
#   "Betty" => 3,
#   "BamBam" => 4,
#   "Pebbles" => 5
# }

# flintstones.select! { |n| n == "Barney" }
# flintstones = flintstones.to_a.flatten!
# p flintstones

# or, the LS way

# flintstones.assoc("Barney")
