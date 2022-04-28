def remove_vowels(array)
  vowels = %w(a e i o u A E I O U)
  array.map do |string| 
    string.chars.reject { |letter| vowels.include?(letter) }.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
