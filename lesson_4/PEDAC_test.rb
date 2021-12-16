# Problem:

# Given a string, write a method, change_me, which returns the same 
# string but with all the palindromes in the string uppercased

# Input: String
# Output: String (Different object)

# Explicit Requirements
#  - Return all palindromes upper-cased
#  - Letters that are already capitalized do not get lower-cased
#  - Empty string returns and empty string

# Implicit Requirements:
#  - Palidromes are case-sensitive (Mom != palindrome, mom == palindrome)
#  - Output string is a different object from the input string object


# Tests:

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"



# Problem:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Questions I Have:
#  - What about non-string inputs

# Input: String
# Output: Array of substrings

# Explicit Requirements:
#  - Return an array of all palindrome (case sensitive) substrings
#  - Empty string returns an empty array
#  - No palindrome found returns an empty array

# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array

# substring method algorithm

# Input: String
# Output: Array of substrings

# for each starting index from 0 to the second to last index
#   for each substring length of 2 to until there are no substrings of that length
#     slice the substring of the indicated length from the starting index
#   end inner loop
# end outer loop

# create 'result' empty variable to store the substrings
# create 'starting_index' variable that increments from 0 to the second to last index in the string (string.length - 2)
# start loop that iterates over 'starting_index' from 0 to length of string - 2
#   create 'num_chars' variable (2) for the length of a substring
#   start the inner loop that iterates over 'num_chars' from '2' to 'string.length - starting_index'
#     extract a substring of length 'num_chars' from 'string' starting at 'starting_index'
#     append the sxtracted substring to the 'result' array
#     increment 'num_chars' by one
#   end inner loop
#   increment 'starting_index' by one
# end outer loop
# return 'result' array

# def substring(string)
#   result = []
#   starting_index = 0

#   while starting_index <= string.length - 2
#     num_chars = 2
#     while num_chars <=  string.length - starting_index
#       substring = string[starting_index, num_chars]
#       result << substring
#       num_chars += 1
#     end
#     starting_index += 1
#   end
#   result
# end

# def is_palindrome?(string)
#   string == string.reverse
# end

# def palindrome_substrings(string)
#   result = []
#   substring_arr = substring(string)
#   substring_arr.each do |sub|
#     result << sub if is_palindrome?(sub)
#   end
#   result
# end

# p palindrome_substrings("supercalifragilisticexpialidocious")
# p palindrome_substrings("abcddcbA")
# p palindrome_substrings("palindrome")
# p palindrome_substrings("")

# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array