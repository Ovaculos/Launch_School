When objects are created they are a separate realization of a particular class.

Given the class below, how do we create two different instances of this class with separate names and ages?

```Ruby
class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end
```

```Ruby
meany = AngryCat.new(12, 'Meany')
nicey = AngryCat.new(15, 'Nicey')
```
