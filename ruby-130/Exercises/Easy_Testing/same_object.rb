require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    assert_same(list, list.process)
  end
end