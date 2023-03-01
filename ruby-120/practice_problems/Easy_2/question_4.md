What could you add to this class to simplify it and remove two methods from the class definition while still maintaining the same functionality?

```Ruby
class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end
```

You could add `attr_accessor :type` to the top of the `BeesWax` class to simplify this code. You can also change the `describe_type` method from calling `@type` to call `type`. 