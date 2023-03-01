In the last question Alan showed Alyssa this code which keeps track of items for a shopping cart application:

```Ruby
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end
```

Alyssa noticed that this will fail when update_quantity is called. Since quantity is an instance variable, it must be accessed with the @quantity notation when setting it. One way to fix this is to change attr_reader to attr_accessor and change quantity to self.quantity.

Is there anything wrong with fixing it this way?

We've now created 2 setter methods that aren't being used.

Also, we've created a bypass to having to go through the `update_quantity` method to change the quantity, this means that the protections built into the `update_quantity` method are now able to be bypassed.