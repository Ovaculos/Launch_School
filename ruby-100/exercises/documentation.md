### 1. Locate File::path and File#path. How are they diffferent?

::path is a class method, and is called when used on the File class
#path is called on objects, and is used when a variable is a file, and then #path is called on that variable

### 2. What of these will print?
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

All will print. The Date::civil method has optional, default arguements. The first one will default to -4712/01/01, Italy, as these are the default values of the Date::civil method. [] (Brackets) are an indicator of an optional argument in documentation

### 3. Use documentation to see what this code will print

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

This will print: [4, 5, 3, 6]. It does this because ruby fills in missing arguments from left to right. I don't really understand exactly how it's working. I can think of 2 possible explanations
First, the default arguments are set. Then, 4 is assigned to a. 6 is assigned to d (because it's the last argument, and it's the last one in order as well). We are done with the required arguments, and now it's on to the optional ones. Left to right. It assigns 5 to b. c is 3, because we don't have an argument for it.
or
4 is assigned to a, 5 is assigned to d, but we have another argument, so it assigns 6 to d, then the 5 goes to b, and it just shuffles down. if there were another argument, let's say 7, it would assign d to 7, then c to 6

### 4. What do each of these output?

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

First will output an error
Second will output: 'beats me'
Third will output: 49

### 5. What will this code print?

5.step(to: 10, by: 3) { |value| puts value }

This will print:
5
8

It will start at 5, it will print that, then go up 3, print 8, then go up by 3 and stop because 11 > 10

### 6. How do you modify the code to make it not show methods only defined in Object, BasicObject, and Kernal?

s = 'abc'
puts s.public_methods.inspect

puts s.public_methods(false).inspect

### 7. How do you modify this code to return the 2 smallest values in the array?

a = [5, 9, 3, 11]
puts a.min

puts a.min(2)

array#min takes an integer argument, and returns an array with x elements in ascending order from the minimum value

### 8. Find documentation for YAML::load_file

https://ruby-doc.org/stdlib-3.1.2/libdoc/psych/rdoc/Psych.html

