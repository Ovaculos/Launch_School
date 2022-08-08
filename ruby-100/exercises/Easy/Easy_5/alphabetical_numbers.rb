NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten
                  eleven twelve thirteen fourteen fifteen sixteen seventeen
                  eighteen nineteen)


def alphabetic_number_sort(numbers)
  words_array = []
  numbers.each { |number| words_array << NUMBER_WORDS[number] }
  words_array.sort.map { |word| NUMBER_WORDS.index(word)}
end

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

def alphabetic_number_sort(numbers)
  numbers.sort { |x, y| NUMBER_WORDS[x] <=> NUMBER_WORDS[y] }
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
