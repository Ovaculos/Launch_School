# Question 1

# What do you expect to happen when the greeting variable is referenced in the last line of the code below

# if false
#   greeting = "hello world"
# end

# greeting

# I expect greeting to be nil, because if false should evaluate false, since the condition isn't true. It shouldn't excecute the code



# Question 2

# What is the result of the last line in the code?

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings # => {a: 'hi there'}

# I think :a will have the value of hi there becaise << modifies the original object that called it, and it's modifying the object of the value



# Question 3

# What will be printed by each of these code groups?

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# 'one is one'
# 'two is two'
# 'three is three'

# the method is only reassigning the local variables

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# 'one is one'
# 'two is two'
# 'three is three'

# the method is only reassigning the local variables

# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# 'one is two'
# 'two is three'
# 'three is one'

# the method uses a method, gsub!, that modifies the original object that it's local variable points to 



# Question 4

# Fix the code so thatit can return a false condition, and when more or fewer than 4 ip components are present.

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size == 4 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
    
    return true
  end

  false
end

# def is_an_ip_number?(number)
#   (0..255).include?(number.to_i)
# end

# puts dot_separated_ip_address?('62.0.23.555')
