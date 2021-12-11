# Question 1

# Write a one-line program that outputs 'The Flintstones Rock!' 10 times with every susequent line indented 1 space to the right

# 10.times { |number| puts ( ' ' * number ) + 'The Flintstones Rock!'}



# Question 2

# puts "the value of 40 + 2 is " + (40 + 2) is an error, why, and find two ways to fix it

# It's an error, because you are trying to put an integer into a string without changing the integer into a string

# puts "the value of 40 + 2 is " + (40 + 2).to_s
# puts "the value of 40 + 2 is #{40 + 2}"



# Question 3

# Make this loop with without using begin/end/until 

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

# def factors(number)
#   divisor = number
#   factors = []
#   loop do
#     break if number <= 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#     break if divisor <= 0
#   end
#   factors
# end

# or 

# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end

# p factors(0)

# number % divisor == 0 makes it so you only get the real factors of the number

# the second to last line returns the completed factors list



# Question 4

# Is there a difference in the two rolling buffer implimentations? ( << vs + )

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# Yes. The buffer using << will mutate the array passed into the method, changing it permanently.
# The buffer using + will not mutate the array passed into the method, and will instead only return a new array with the changes made to that new one, leaving the original untouched



# Question 5

# What's the issue with this Fibonacci calculator? Fix it.

# limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# limit = 15

# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, limit)
# puts "result is #{result}"



# Question 6

# What does this code output?

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# it should output 34, because the mess_with_it method it non-mutating, so it's just doing 42 - 8



# Question 7

# Does mess_with_demographics actually mess up the demograpics?

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)

# p munsters

# Yes. The mess_with_demograpics method's arguement is directly messing with the original object, since it doesn't re-assign demo_hash



# Question 8

# What is the result of this method call?

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# It will output paper, simple logic to follow



# Question 9

# What is the return value of this method invocation?

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)

# It will return 'no'
