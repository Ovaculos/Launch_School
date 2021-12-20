def prompt(string)
  puts "=> #{string}"
end

prompt 'Please write a word or multiple words.'

sentence = gets.chomp
number_of_characters = sentence.delete(' ').size

prompt "There are #{number_of_characters} characters in #{sentence}."