
# SA 8 - ACT 2 - Q7 - Polymorphism through Duck Typing

class Writer
    def create
      puts "Writing something"
    end
  end
  
  class Painter
    def create
      puts "Painting something"
    end
  end
  
  # polymorphism through duck typing
    # Even though they are different artists, they can both be passed to the showcase_talent
    # function because they exhibit the behavior expected of an object that can quack.
  def showcase_talent(artists)
    artists.each do |artist|
      artist.create
    end
  end
  
  Bob = Writer.new
  Sally = Painter.new
  
  showcase_talent([Bob, Sally])