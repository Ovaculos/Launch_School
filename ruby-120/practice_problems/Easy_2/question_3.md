How do you find where Ruby will look for a method when that method is called? How can you find an object's ancestors?

```Ruby
module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end
```

What is the lookup chain for Orange and HotSauce?

You can figure out where Ruby will look to find a method by looking at it's lookup chain. You can find this, and an object's ancestors by using the `#ancestors` method. This will return the ancestor/lookup chain of the object that calls it. 

Lookup chain for `Orange` and `HotSauce` is:

[Orange/HotSauce, Taste, Object, Kernal, BasicObject]

If the method you call on an object doesn't appear in the chain, Ruby will raise a `NoMethodError`

