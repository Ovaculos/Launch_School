If I have the following class:

```Ruby
class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end
```

What would happen if I called the methods like shown below?

```Ruby
tv = Television.new
tv.manufacturer
tv.model

Television.manufacturer
Television.model
```

`tv.manufacturer` and `Television.model` would throw `NoMethodError`s. This would happen because there's no instance `#manufacturer` method, and no class `::model` method

