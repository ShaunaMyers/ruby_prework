# Add the following methods to this burrito class and 
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings
  def initialize(protein, base, toppings)
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