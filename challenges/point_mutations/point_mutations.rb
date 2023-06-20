class DNA
  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(other_sequence)
    hamming_distance = 0

    [@sequence.size, other_sequence.size].min.times do |iter|
      hamming_distance += 1 unless @sequence[iter] == other_sequence[iter]
    end

    hamming_distance
  end
end

