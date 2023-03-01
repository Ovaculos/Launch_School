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

Which one of these is a class method (if any) and how do you know? How would you call a class method?

`self.manufacturer` is a class method. I know this because the method definition starts with `self.`