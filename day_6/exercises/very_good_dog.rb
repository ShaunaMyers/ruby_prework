class VeryGoodDog
    attr_accessor :name, :height, :weight
    def initialize(n, h, w)
        @name = n
        @height = h
        @weight = w
    end 

    def speak
        "#{name} says 'Arf!'"
    end

    def change_info(n, h, w)
        self.name = n
        self.height = h 
        self.weight = w 
        return
    end 

    def return_info 
        "#{name} is #{height} inches tall and weighs #{weight} pounds."
    end 
end


spot = VeryGoodDog.new("Spot", 25, 50)
puts spot.speak
puts spot.return_info
puts spot.change_info("Spottifer", 27, 52)
puts spot.return_info
puts spot.speak
puts spot.return_info
spot.name = "Spotticus"
puts spot.return_info