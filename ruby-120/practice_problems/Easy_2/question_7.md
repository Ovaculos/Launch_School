If we have a class such as the one below:

```Ruby
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end
```

Explain what the @@cats_count variable does and how it works. What code would you need to write to test your theory?

The `@@cats_count` class variable counts the amount of `Cat` objects have been instantiated. We can test this like so:

```Ruby
Cat.new('Cute')
Cat.cats_count
```