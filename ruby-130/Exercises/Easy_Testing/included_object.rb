require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    assert_includes(list, 'xyz')
  end
end