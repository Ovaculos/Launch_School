*Select*

- #select returns a new array of all the truthy values found in a collection
  - #select with a puts at the end of it's block will return an empty array, because puts returns nil, a falsey value

*Map*

- #map returns a new array that has the possibly modified values of the original.
[1, 2, 3].map do |num|
  num * 2
end
- This will return [2, 4, 6]
[1, 2, 3].map do |num|
  num.odd?
end
- This will return [true, false, true]
[1, 2, 3].map do |num|
  num.odd?
  puts num
end
- This will return [nil, nil, nil]
[1, 2, 3].map do |num|
  'hi'
end
- This will return ["hi", "hi", "hi"]

