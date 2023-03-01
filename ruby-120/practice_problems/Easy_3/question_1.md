If we have this code:

```Ruby
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end
```

What happens in each of the following cases:

case 1:

```Ruby
hello = Hello.new
hello.hi
```

case 2:

```Ruby
hello = Hello.new
hello.bye
```

case 3:

```Ruby
hello = Hello.new
hello.greet
```

case 4:

```Ruby
hello = Hello.new
hello.greet("Goodbye")
```

case 5:

```Ruby
Hello.hi
```

Case 1 result:

Output "Hello"

Case 2 result:

`NoMethodError`

Case 3 result:

`ArgumentError`

Case 4 result:

Output "Goodbye"

Case 5 result:

`NoMethodError`