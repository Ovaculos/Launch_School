name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This code should print out 
# BOB
# BOB

# name is assigned to the object 'Bob', then save_name is assigned to point to the same object.
# #upcase! is a mutating method, so it's changing the object that the variable points to, which means that save_name, and name will point to the mutated 'Bob', which is now 'BOB'
