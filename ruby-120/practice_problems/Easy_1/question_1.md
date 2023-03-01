Which of the following are Ruby objects? If they are objects, how can you find out which class they belong to?

1. `true`
2. `"Hello"`
3. `[1, 2, 3, "happy days"]`
4. `142`

1, 2, 3, and 4 are objects. They belong to the `TrueClass`, `String`, `Array`, and `Integer` classes respectively. You can find this out by typing 

```Ruby
true.class                     # => TrueClass
"Hello".class                  # => String
[1, 2, 3, "happy days"].class  # => Array
142.class                      # => Integer
```

