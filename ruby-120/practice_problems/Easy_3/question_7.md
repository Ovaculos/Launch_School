What is used in this class but doesn't add any value?

```Ruby
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end
```

The `return` on line 13, the last thing within a method definition will always be returned