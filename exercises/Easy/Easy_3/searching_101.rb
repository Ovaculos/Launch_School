def prompt(string)
  puts "=> #{string}"
end

num_array = []

prompt 'Enter the 1st number.'
num_array << gets.chomp.to_i
prompt 'Enter the 2nd number.'
num_array << gets.chomp.to_i
prompt 'Enter the 3rd number.'
num_array << gets.chomp.to_i
prompt 'Enter the 4th number.'
num_array << gets.chomp.to_i
prompt 'Enter the 5th number.'
num_array << gets.chomp.to_i
prompt 'Enter the number you want to search for in the last 5 numbers.'
search_num = gets.chomp.to_i

if num_array.include?(search_num)
  puts "The number #{search_num} appears in #{num_array}."
else
  puts "The number #{search_num} does not appear in #{num_array}."
end
