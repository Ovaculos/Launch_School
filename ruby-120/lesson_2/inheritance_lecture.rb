# 1. One problem is that we need to keep track of different breeds of dogs, since they have slightly different behaviors. 
# For example, bulldogs can't swim, but all other dogs can.
# Create a sub-class from Dog called Bulldog overriding the swim method to return "can't swim!"

class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim"
  end
end

teddy = Dog.new
puts teddy.speak           # => "bark!"
puts teddy.swim           # => "swimming!"

# 2. Make a `cat` class that can do everything the dog can do except swim and fetch

module Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog
  include Pet

  def speak
    'bark!'
  end
  
  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat
  include Pet

  def speak
    'meow!'
  end
end

# 3. Draw a class heirarchy diagram from step 2

#     Pet
#    /   \
#  Cat   Dog
#         |
#       Bulldog

# 4. What is the method lookup path and how is it important?

# The method lookup path is the order in which methods that are called look through to find the definition
# It's important because a method that is called will 