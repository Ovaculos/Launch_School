Alan created the following code to keep track of items for a shopping cart application he's writing:

```Ruby
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end
```

Alyssa looked at the code and spotted a mistake. "This will fail when update_quantity is called", she says.

Can you spot the mistake and how to address it?

The code in `update_quantity` is trying to call a non-existant setter method for `@quantity`, we would have to set `attr_reader` to `attr_accessor`, or put it under an `attr_accessor` instead. We could also directly reference the variable: `@quantity`.

