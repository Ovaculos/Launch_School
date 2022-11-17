class Cat
  COLOR = 'purple'

  attr_accessor :name, :color

  def initialize(name)
    @name = name
    @color = COLOR
  end

  def greet
    puts "Hi, my name is #{name}, and my color is #{color}"
  end
end

kitty = Cat.new('Sophie')
kitty.greet