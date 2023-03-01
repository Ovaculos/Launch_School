If we have an `AngryCat` class, how do we create a new instance of that class?

```Ruby
class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end
```

You can create an instance of a class by calling `class.new`, like so:

```Ruby
AngryCat.new
```

Using `#new` after a class name will tell Ruby to make a new instance of that class. You'd usually assign the new class object to a variable, like so:

```Ruby
Muffin = AngryCat.new
```
