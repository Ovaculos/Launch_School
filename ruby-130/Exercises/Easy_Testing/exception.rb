require 'minitest/autorun'

class Test < Minitest::Test
  def test_x
    assert_raises NoExperienceError { employee.hire }
  end
end