require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    value = 's'
    assert_equal('xyz', value.downcase)
  end
end