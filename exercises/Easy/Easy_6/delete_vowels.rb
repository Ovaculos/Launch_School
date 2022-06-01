VOWELS = %w(a e i o u A E I O U)

# def remove_vowels(sentence_arr)
#   sentence_arr.map do |sentence|
#     sentence.chars.delete_if { |letter| VOWELS.include?(letter)}.join
#   end
# end

# or 

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

