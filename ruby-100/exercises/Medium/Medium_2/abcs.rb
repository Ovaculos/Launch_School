BLOCKS = %w(B:O   X:K   D:Q   C:P   N:A  G:T   R:E   F:S   J:W   H:U  V:I   L:Y   Z:M).freeze

def block_word?(word)
  up_string = word.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH')# == true
p block_word?('BUTCH')# == false
p block_word?('jest')# == true
