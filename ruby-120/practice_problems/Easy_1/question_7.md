If we have a class such as the one below:

```Ruby
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end
```

You can see in the `make_one_year_older` method we have used `self`. What does `self` refer to here?

In this example, `self` refers to the specific object that's calling the method. If we had an object:

```Ruby
muffin = Cat.new('cute')
```

`self` would refer to the `muffin` object. It's refering to the instance of `Cat`

