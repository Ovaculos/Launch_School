def print_in_box(text)
  line = "+#{'-' * (text.size + 2)}+"
  blank = "|#{' ' * (text.size + 2)}|"
  puts line
  puts blank
  puts "| #{text} |"
  puts blank
  puts line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
