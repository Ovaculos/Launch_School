require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    assert_instance_of(Numeric, value)
  end
end