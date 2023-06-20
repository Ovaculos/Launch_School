require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    assert_equal(true, array.empty?)
    assert_empty(list)
  end
end