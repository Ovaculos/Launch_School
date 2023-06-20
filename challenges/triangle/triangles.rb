class Triangle
  attr_accessor :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError.new "Given lengths don't create a valid triangle." unless valid?
  end

  def kind
    if sides.uniq.size == 1
      return 'equilateral'
    elsif sides.uniq.size == 2
      return 'isosceles'
    else
      return 'scalene'
    end
  end

  private

  def valid?
    sides.min > 0 &&
    sides[0] + sides[1] > sides[2]
    sides[0] + sides[2] > sides[1]
    sides[1] + sides[2] > sides[0]
  end
end

tri = Triangle.new(60, 90, 30)
p tri.kind