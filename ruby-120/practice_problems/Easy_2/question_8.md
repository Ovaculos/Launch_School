If we have this class:

```Ruby
class Game
  def play
    "Start the game!"
  end
end
```

And another class:

```Ruby
class Bingo
  def rules_of_play
    #rules of play
  end
end
```

What can we add to the Bingo class to allow it to inherit the play method from the Game class?

```Ruby
class Bingo < Game
  def rules_of_play
    # rules of play
  end
end
```