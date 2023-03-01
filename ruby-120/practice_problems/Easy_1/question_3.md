In question 2, when we call `go_fast`, the return string contains the name and type of vehicle we're using. How's this done?

```Ruby
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end
```

>> small_car = Car.new
>> small_car.go_fast
I am a Car and going super fast!

We have access to the class name because within `go_fast`, we are calling `self#class`, the self is just a placeholder for the object that's calling it. It's effectively the same as calling `small_car.class`, which gives us `Car`, since that's the class. We don't have to use `to_s` here, because Ruby will automatically interpolate since it's within a string.

