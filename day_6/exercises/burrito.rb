# Add the following methods to this burrito class and 
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings
  # The initialize method gets called every time you create a new object. That's odd, don't we call the new method when we create an object? Yes, calling the new class method eventually leads us to the initialize instance method. *** Kind of like the constructor method in JavaScript?*** Yes, We refer to the initialize method as a constructor, because it gets triggered whenever we create a new object.
  def initialize(protein, base, toppings)
    # You can pass arguments into the initialize method through the new method.

    # Notice below, the @ symbol in front of our variables. This is called an instance variable. It is a variable that exists as long as the object instance exists and it is one of the ways we tie data to objects. It does not "die" after the initialize method is run. It "lives on", to be referenced, until the object instance is destroyed.
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(topping)
    @toppings.push(topping)
    puts "Your toppings: #{toppings}"
  end

  def remove_topping(topping)
    @toppings.delete(topping)
    puts "Your toppings: #{toppings}"
  end

  def change_protein(new_protein)
    @protein = new_protein
    puts "Your protein: #{protein}"
  end 

  def info 
    topping_strings = ""
    toppings.each do |topping|
      if topping == toppings.last
        topping_strings += "and #{topping}."
      else
        topping_strings += "#{topping}, "
      end
    end
    puts "Your burrito has #{protein} with #{base} and #{topping_strings}"
  end
end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings
dinner.add_topping('pinneapple')
dinner.remove_topping('cheese')
dinner.change_protein('Impossible Meat')
dinner.info