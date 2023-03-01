If we have a `Car` class and a `Truck` class and we want to be able to `go_fast`, how can we add the ability for them to `go_fast` using the `Speed` module? How can you check if your `Car` or `Truck` can go fast now?

```Ruby
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end
```

You would have to put `include Speed` at the top of both the `Car` and `Truck` classes. Then make them go fast by writing:

```Ruby
porche = Car.new

porche.go_fast
```

This is also how we check.