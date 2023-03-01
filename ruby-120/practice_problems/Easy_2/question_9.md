If we have this class:

```Ruby
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end
```

What would happen if we added a play method to the Bingo class, keeping in mind that there is already a method of this name in the Game class that the Bingo class inherits from.

If we added a `play` method to the `Bingo` class, when we called `#play` on any `Bingo` object, Ruby would execute whatever code is within the `play` from `Bingo`. (The `play` in `Bingo` would override the inherited `play` from `Game`)

