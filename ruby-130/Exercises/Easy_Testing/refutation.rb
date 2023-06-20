require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    refute_includes(list, 'xyz')
  end
end