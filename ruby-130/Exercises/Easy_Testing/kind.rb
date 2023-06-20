require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    assert_kind_of(Numeric, value)
  end
end