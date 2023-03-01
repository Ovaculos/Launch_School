If we have the class below, what would you need to call to create a new instance of this class.

```Ruby
class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end
```

You would need to call `Bag.new` with two arguments (because of the two arguments in the `Bag#initialize` method):

```Ruby
Bag.new('red','burlap')
```
