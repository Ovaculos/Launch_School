require 'minitest/autorun'

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def miaow
    "#{name} is miaowing."
  end
end

class CatTest < MiniTest::Test
  def setup
    @kitty = Cat.new('Kitty')
  end

  def test_is_cat; end

  def test_name; end

  def test_miaow
    assert_equal(' is miaowing.', @kitty.miaow)
  end

  def test_raises_error
    assert(Cat.new == ArgumentError)
  end
end



