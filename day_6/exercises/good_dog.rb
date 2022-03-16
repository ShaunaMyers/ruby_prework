# module Speak
#     def speak(sound)
#       puts sound
#     end
#   end
  
#   class GoodDog
#     include Speak
#   end
  
#   class HumanBeing
#     include Speak
#   end
  
#   sparky = GoodDog.new
#   sparky.speak("Arf!")        # => Arf!
#   bob = HumanBeing.new
#   bob.speak("Hello!")         # => Hello!

# puts "---GoodDog ancestors---"
# puts GoodDog.ancestors
# puts ''
# puts "---HumanBeing ancestors---"
# puts HumanBeing.ancestors

############################################################################################

# class GoodDog
#   def initialize(name)
#     @name = name
#   end

#   def speak
#     puts "#{@name} says Arf!"
#   end 

#   def name    # used to be get_name
#     puts @name
#   end

#   def name=(name)     # used to be set_name
#     @name = name
#   end

# end 



# sparky = GoodDog.new("Sparky")
# sparky.speak    # ==> "Arf!"

# What if we wanted to print out only sparky's name? We could try the code below

# sparky.name

# However, we get the following error: NoMethodError: undefined method `name' for #<GoodDog:0x007f91821239d0 @name="Sparky">
# A NoMethodError means that we called a method that doesn't exist or is unavailable to the object. If we want to access the object's name, which is stored in the @name instance variable, we have to create a method that will return the name. We can call it get_name, and its only job is to return the value in the @name instance variable.

# sparky.get_name  # ==> "Sparky"

# We now have a getter method. But what if we wanted to change sparky's name? That's when we reach for a setter method. Let's call it set_name

# sparky.set_name = "Spartacus"
# sparky.get_name
# sparky.speak

#  As you can see, we've successfully changed sparky's name to the string "Spartacus". The first thing you should notice about the setter method set_name= is that Ruby gives us a special syntax to use it. To use the set_name= method normally, we would expect to do this: sparky.set_name=("Spartacus"), where the entire "set_name=" is the method name, and the string "Spartacus" is the argument being passed in to the method. Ruby recognizes that this is a setter method and allows us to use the more natural assignment syntax: sparky.set_name = "Spartacus". When you see this code, just realize there's a method called set_name= working behind the scenes, and we're just seeing some Ruby syntactical sugar.

#  Finally, as a convention, Rubyists typically want to name those getter and setter methods using the same name as the instance variable they are exposing and setting. We'll make the change to our code as well.

# sparky.speak
# sparky.name
# sparky.name = "Spartacus"
# sparky.name
# sparky.speak


# You'll notice that writing those getter and setter methods took up a lot of room in our program for such a simple feature. And if we had other states we wanted to track, like height or weight, the class would be even longer. Because these methods are so commonplace, Ruby has a built-in way to automatically create these getter and setter methods for us, using the attr_accessor method. Check out this refactoring of the code from above.

class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"

# Our output is the same! The attr_accessor method takes a symbol as an argument, which it uses to create the method name for the getter and setter methods. That one line replaced two method definitions.

# But what if we only want the getter method without the setter method? Then we would want to use the attr_reader method. It works the same way but only allows you to retrieve the instance variable. And if you only want the setter method, you can use the attr_writer method

# Instead of referencing the instance variable directly, we want to use the name getter method that we created earlier, and that is given to us now by attr_accessor. We'll change the speak method from "#{@name} says arf!" to this:

# def speak
#   "#{name} says arf!"
# end

# Why do this? Why not just reference the @name instance variable, like we did before? Technically, you could just reference the instance variable, but it's generally a good idea to call the getter method instead.

# If we want more attribute accessors, we add them on like this:

# attr_accessor :name, :height, :weight

# Now suppose we want to create a new method that allows us to change several states at once, called change_info(n, h, w). The three arguments to the method correspond to the new name, height, and weight, respectively. We could implement it like this:

# def change_info(n, h, w)
#    name = n
#    height = h
#    weight = w
# end

# But you'll notices that this won't change our attribute values. Instead, Ruby will think we're trying to create new local variables called name, height, and weight. It turns out that instead of calling the name=, height= and weight= setter methods, what we did was create three new local variables.

# To disambiguate from creating a local variable, we need to use self.name= to let Ruby know that we're calling a method:

# def change_info(n, h, w)
#    self.name = n
#    self.height = h
#    self.weight = w
# end

# Note that prefixing "self." is not restricted to just the accessor methods; you can use it with any instance method.
