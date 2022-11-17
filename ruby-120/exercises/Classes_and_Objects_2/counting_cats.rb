class Cat
  @@num_of_cats = 0

  def initialize
    @@num_of_cats += 1
  end

  def self.total
    @@num_of_cats
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

p Cat.total