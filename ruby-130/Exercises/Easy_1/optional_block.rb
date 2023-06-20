def compute(block_arg)
  return 'Does not compute.' unless block_given?
  yield(block_arg)
end

compute(5) { |num| puts num }
# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'