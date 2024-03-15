
# SA 8 - ACT 2 - Q6 - Include Module as Mixin

module Drivable
    def drive(type)
      puts "Let's go on a drive in a #{type}!"
    end
  end
  
  class Car
    include Drivable
  end
  
  class Truck
    include Drivable
  end
  
  # creating new instances
  car = Car.new
  truck = Truck.new
  
  # Both objects can use the drive method
  car.drive("car")
  truck.drive("truck")