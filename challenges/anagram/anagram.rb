class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(candidates)
    matches = []
    candidates.each do |candidate|
      next if word.downcase == candidate.downcase
      can_word = candidate.downcase.split('').sort
      base_word = word.downcase.split('').sort
      matches << candidate if base_word == can_word
    end

    matches
  end
end 