class MyCar
    attr_accessor :color, :current_speed
    attr_reader :year, :model

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model 
        @current_speed = 0
    end 

    def speed_up(mph)
        self.current_speed += mph
    end

    def brake(mph)
        self.current_speed -= mph
    end

    def stop_car
        self.current_speed = 0
    end

    def spray_paint(paint)
        self.color = paint
        puts "Your new #{color} paint job looks great!"
    end

    def return_info
        "The #{year} #{model} is #{color} and is going #{current_speed} miles per hour"
    end
end

crosstrek = MyCar.new(2019, 'Orange', 'Crosstrek')

puts crosstrek.return_info
crosstrek.speed_up(25)
crosstrek.speed_up(20)
puts crosstrek.return_info
crosstrek.brake(23)
puts crosstrek.return_info
crosstrek.stop_car
puts crosstrek.return_info
crosstrek.color = "Red"
puts crosstrek.return_info
puts crosstrek.color
puts crosstrek.year
crosstrek.spray_paint('Fuschia')




