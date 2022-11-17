# 1. Given the below usage of the Person class, code the class definition.

# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new('bob')
# puts bob.name                  # => 'bob'
# bob.name = 'Robert'
# puts bob.name                  # => 'Robert'

# 2. Modify the class definition from above to facilitate the following methods. Note that there is no name= setter method now.

# class Person
#   attr_accessor :first_name, :last_name 

#   def initialize(first_name)
#     @first_name = first_name
#     @last_name = ''
#   end

#   def name
#     "#{@first_name} #{@last_name}"
#   end
# end

# bob = Person.new('Robert')
# puts bob.name                  # => 'Robert'
# puts bob.first_name            # => 'Robert'
# puts bob.last_name             # => ''
# bob.last_name = 'Smith'
# puts bob.name                  # => 'Robert Smith'

# 3. Now create a smart name= method that can take just a first name or a full name, and knows how to set the first_name and last_name appropriately.

# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parse_full_name(full_name)
#   end

#   def name
#     "#{@first_name} #{@last_name}"
#   end
  
#   def name=(full_name)
#     parse_full_name(full_name)
#   end

#   private 

#   def parse_full_name(full_name)
#     split_name = full_name.split
#     @first_name = split_name.first
#     @last_name = split_name.size > 1 ? split_name.last : ''
#   end
# end

# bob = Person.new('Robert')
# puts bob.name                  # => 'Robert'
# puts bob.first_name            # => 'Robert'
# puts bob.last_name             # => ''
# bob.last_name = 'Smith'
# puts bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# puts bob.first_name            # => 'John'
# puts bob.last_name             # => 'Adams'

# 4. How can we compare the objects to see if they have the same name?

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{@first_name} #{@last_name}"
  end
  
  def name=(full_name)
    parse_full_name(full_name)
  end

  def to_s
    name
  end

  private 

  def parse_full_name(full_name)
    split_name = full_name.split
    @first_name = split_name.first
    @last_name = split_name.size > 1 ? split_name.last : ''
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

puts bob.name == rob.name

# 5. Using the same method definition from above. What will this print?

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

# This will print a Person object, since we are returning the bob object, instead of a string of his name or something

# If we add this?

# class Person
#   # ... rest of class omitted for brevity

#   def to_s
#     name
#   end
# end

# This will print as expected, since the to_s method will use the return value of the name method, which is the string of his full name
