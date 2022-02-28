# Create a person class with at least 2 attributes and 2 behaviors. 
# Call all person methods below the class and print results
# to the terminal that show the methods in action.

class Person 
    attr_accessor :name 
    attr_reader :age

    def initialize(name, age)
        @name = name 
        @age = age 
    end 

    def change_name(name)
        self.name = name 
    end

    def check_age(given_age)
        if given_age != age
            puts "This is not the same person. The correct age is #{age}."
        else
            puts "This is the correct person with a matching age."
        end 
    end 
end

david = Person.new("David", 24)
p david.name
p david.age
p david.change_name("David Marynik")
david.check_age(25)
david.check_age(24)