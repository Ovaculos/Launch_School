<<<<<<< HEAD
class Person
  attr_writer :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
puts mike.full_name # => 'Michael Garcia'
=======
>>>>>>> b94155d2394e797418544ade12955c84863b10d3
