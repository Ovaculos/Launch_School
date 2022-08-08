def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# Should return a different object, since the string that gets passed in gets turned into an array, and then the array gets turned into a string. The array gets mutated, and stays the same object, but the strings will be different objects
