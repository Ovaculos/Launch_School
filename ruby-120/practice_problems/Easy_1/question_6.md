What is the default return value of to_s when invoked on an object? Where could you go to find out if you want to be sure?

The `to_s` method, by default will return the name of an object's class and an encoding of the object's id. You can find this within the `Object#to_s` documentation