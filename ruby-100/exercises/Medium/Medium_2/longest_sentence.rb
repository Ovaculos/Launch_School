book = File.read("/Users/mason/Documents/Programming/Launch_School/ruby-100/exercises/Medium/Medium_2/Frankenstein.txt")

def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)

  longest_sentence = sentences.max_by { |sentence| sentence.split.size }
  longest_sentence = longest_sentence.strip

  longest_sentence_size = sentences.map { |sentence| sentence.split.length }.max

  puts "#{longest_sentence}" 
  puts "#{longest_sentence_size}"
end

longest_sentence(book)