class Vehicle

def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Car < Vehicle
  attr_reader :fuel, :make, :model
  attr_writer :fuel, :make, :model

  def initialize(input_option)
    super()
    @fuel = input_option[:fuel]
    @make = input_option[:make]
    @model = input_option[:model]
  end
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end


class Bike < Vehicle
  attr_writer :type, :weight
  attr_reader :type, :weight

  def initialize(input_option)
    super()
    @type = input_option[:type]
    @weight = input_option[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

p toyota = Car.new(fuel: "full",
                  make: "Toyota", 
                  model: "Camry")
p toyota.accelerate
p toyota.turn('south')
 toyota.model = "Prius"
 p toyota.model
p toyota.fuel
toyota.fuel = "empty"
p toyota.fuel 
toyota.honk_horn

puts
puts

p huffy = Bike.new(type: "Huffy", weight: "Heavy")
p huffy.accelerate
p huffy.turn("east")
huffy.ring_bell











