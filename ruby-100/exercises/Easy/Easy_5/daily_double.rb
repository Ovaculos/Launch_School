def crunch(string)
  final = ''
  characters = string.chars
  characters.each_with_index do |letter, index|
    if letter == characters[index + 1]
      next
    else
      final << letter
    end
  end
  final
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''