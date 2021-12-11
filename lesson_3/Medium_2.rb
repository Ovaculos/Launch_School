# Question 1

# Predict how the values and object ids change throughout this

# def fun_with_ids
#   a_outer = 42
#   b_outer = "forty two"
#   c_outer = [42]
#   d_outer = c_outer[0] 

#   a_outer_id = a_outer.object_id
#   b_outer_id = b_outer.object_id
#   c_outer_id = c_outer.object_id
#   d_outer_id = d_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # new
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." # new
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # new
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # same as a_outer, because it's just taking the id of 42
#   puts

#   1.times do
#     a_outer_inner_id = a_outer.object_id
#     b_outer_inner_id = b_outer.object_id
#     c_outer_inner_id = c_outer.object_id
#     d_outer_inner_id = d_outer.object_id

#     puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block." # same as a_outer's id
#     puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block." # same as b_outer's id
#     puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block." # same as c_outer's id
#     puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block." # same as d_outer's id
#     puts

#     a_outer = 22
#     b_outer = "thirty three"
#     c_outer = [44]
#     d_outer = c_outer[0]

#     puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # different, assignment is non-mutating, and integers cannot be mutated
#     puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # different, assignment is non-mutating, and integers cannot be mutated
#     puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # different, assignment is non-mutating, and integers cannot be mutated
#     puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # different, assignment is non-mutating, and integers cannot be mutated
#     puts


#     a_inner = a_outer
#     b_inner = b_outer
#     c_inner = c_outer
#     d_inner = c_inner[0]

#     a_inner_id = a_inner.object_id
#     b_inner_id = b_inner.object_id
#     c_inner_id = c_inner.object_id
#     d_inner_id = d_inner.object_id

#     puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
#     puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
#     puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
#     puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
#     puts
#   end

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
#   puts

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
# end

# fun_with_ids



# Question 2

# Predict how the ids and such change when the block is replaced by a method

# def fun_with_ids
#   a_outer = 42
#   b_outer = "forty two"
#   c_outer = [42]
#   d_outer = c_outer[0]

#   a_outer_id = a_outer.object_id
#   b_outer_id = b_outer.object_id
#   c_outer_id = c_outer.object_id
#   d_outer_id = d_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
#   puts

#   an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."
#   puts

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts
# end


# def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

#   puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."
#   puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
#   puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
#   puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."
#   puts

#   a_outer = 22
#   b_outer = "thirty three"
#   c_outer = [44]
#   d_outer = c_outer[0]

#   puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
#   puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
#   puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
#   puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
#   puts

#   a_inner = a_outer
#   b_inner = b_outer
#   c_inner = c_outer
#   d_inner = c_inner[0]

#   a_inner_id = a_inner.object_id
#   b_inner_id = b_inner.object_id
#   c_inner_id = c_inner.object_id
#   d_inner_id = d_inner.object_id

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)."
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)."
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)."
#   puts
# end



# Question 3

# What will be displayed when this code is run?

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# My string looks like this now: pumpkins
# My array looks like this now: ['pumpkins', 'rutabaga']

# += only changes the new local variable that is created when passing the object into the method, but << will modify the original object
# += is re-assigning the methods new local variable to 'pumpkin' + 'rutabaga', but it doesn't touch the original object
# << makes ruby use the object that was passed in, and appends to that, rather than the new local variable it creates when passed
# local variable an_array_param still points to the original object



# Question 4

# What will be displayed when this code is run?

# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ['pumpkins']

# the method is appending 'rutabaga' on the the original my_string that was passed into it, because a_string_param still points to the original object, and << appends on the original object
# the method is only re-assigning the local variable, an_array_param to ['pumpkins', 'rutabaga'], which is a new object as well, rather than changing the original object, because it's just a re-assignment
# the re-assignment is chainging the object the local variable points to



# Question 5

# Change the method so the resulf is easier to predict and easier for the next programmer to maintain.

# def method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"



# Question 6

# Simply the method without changing it's return value

# def color_valid(color)
#   ['blue', 'green'].include?(color)
# end

# p color_valid('green')