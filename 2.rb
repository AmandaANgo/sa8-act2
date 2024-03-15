
# SA 8 - ACT 2 - Q2 - Using attr_reader and attr_writer

class Gadget

    attr_reader :name
    attr_reader :price
  
    attr_writer :name
    attr_writer :price
  
    def initialize(name, price)
      @name = name
      @price = price
    end
  end
  
  my_gadget = Gadget.new("Phone", 999.99)
  
  puts "Gadget name: #{my_gadget.name}"
  
  my_gadget.price = 1299.99
  puts "Updated price: $#{my_gadget.price}"


