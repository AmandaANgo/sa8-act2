
# SA 8 - ACT 2 - Q9 - Using self in Instance Methods

class Camera
    attr_accessor :status
  
    def initialize
      @status = "Off"
    end
  
    def turn_on
      @status = "On"
      puts "Camera is #{self.status}."
    end
  
    def turn_off
      @status = "Off"
      puts "Camera is #{self.status}."
    end
  end
  
  camera = Camera.new
  puts "Initial status: #{camera.status}"
  camera.turn_on
  camera.turn_off