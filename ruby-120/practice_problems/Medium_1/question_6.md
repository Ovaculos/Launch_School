If we have these two methods in the Computer class:

```Ruby
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end
```

and

```Ruby
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template
  end
end
```

What is the difference in the way the code works?

The difference is in `show_template` the first one is calling a getter method for the `@template` instance variable, the other is directly calling that same variable. Both have the same outcome, just in different ways.

Generally, people avoid `self.` when not required.