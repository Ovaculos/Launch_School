require 'minitest/autorun'

class Test < Minitest::Test
  def test_odd
    value = 0
    assert(value.odd?)
  end
end