# def swap_first_and_last_letters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(string)
#   string.split(' ').map do |word|
#     swap_first_and_last_letters(word)
#   end
#   .join(' ')
# end

def swap(string)
  word_arr = string.split(' ')
  str = ''
  word_arr.map do |word|
    if word.length > 1
      first, last = word[0], word[-1]
      last + word[1..-2] + first
    else
      word
    end
  end
  .join(' ')

end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
