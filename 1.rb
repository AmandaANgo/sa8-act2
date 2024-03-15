
# SA 8 - ACT 2 - Q1 - Basic Class Definition and Instantiation

class Laptop

    def initialize(brand, model)
      @brand = brand
      @model = model
    end
  
    def brand  new_brand
      @brand = new_brand
    end
  
    def model new_model
      @model = new_model
    end
  
    def computer
      puts "#{@brand} #{@model}"
    end
  end
  
  puts "Original:"
  laptop = Laptop.new ("HP"), ("Omen")
  laptop.computer
  
  puts
  puts "Update using setter:"
  laptop.model "Omen+"
  laptop.computer