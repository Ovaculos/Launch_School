def ascii_value(string)
  return 0 if string == ''
  string.chars.map { |letter| letter.ord }.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

p 'Mason'.ord.chr

# #ord#chr will only give you the ascii value of the first letter in the string, then convert that back to a string

p 'Mason'.chars.map { |letter| letter.ord }.map { |ascii| ascii.chr }.join

# You need to create an array of the ascii values of each letter, as done in the normal solution.
# You then call .chr on each of the ascii values to turn them all back into their letter values, join them after to get the desired result.

p 'Mason'.chars.map { |letter| letter.ord }.pack('c*')