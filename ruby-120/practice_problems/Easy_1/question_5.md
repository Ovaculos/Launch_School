Which of these two classes would create objects that would have an instance variable and how do you know?

```Ruby
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end
```

Pizza would create an instance varible, since it's calling `@name = name`. When you put an `@` in front of a varible name, Ruby takes that as an instance variable. We can check this by instantiating an object for each class and calling `#instance_variables` on each:

```Ruby
hot_pizza = Pizza.new("cheese")
orange    = Fruit.new("apple")

hot_pizza.instance_variables
# => [:@name]
orange.instance_variables
# => []

