We have an Oracle class and a RoadTrip class that inherits from the Oracle class.

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

```Ruby
class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end
```

What is the result of the following:

```Ruby
trip = RoadTrip.new
trip.predict_the_future
```

The result will be a return value being one of the strings within the array that `RoadTrip#choices` returns with "You will " prepended to it. This happens because the `RoadTrip#choices` overrides the `Oracle#choices`

