array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# This code will print

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# The code will copy all value references from the first array into the second, making the arrays contain the same values (same pointers to same objects)
# The fourth line mutates the values that are now in both arrays to make them uppercase