module Moveable
#modules belong at the top of the page and in the instances of classes they belong above the initialize method. 
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

class Vehicle

 def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include Moveable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include Moveable

  def ring_bell
    puts "Ring ring!"
  end
end

toyota = Car.new
p toyota
toyota.turn("south")
toyota.accelerate
p toyota
p "=" * 30

huffy = Bike.new
p huffy
huffy.turn("east")
huffy.accelerate
p huffy