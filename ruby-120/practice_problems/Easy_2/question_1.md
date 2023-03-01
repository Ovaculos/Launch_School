You are given the following code:

```Ruby
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end
```

What is the result of executing the following code:

```Ruby
oracle = Oracle.new
oracle.predict_the_future
```

The result will be a return value being one of the strings within the array that `choices` returns with "You will " prepended to it.