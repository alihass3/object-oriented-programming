class  Cat

  def initialize(name,preferred_food,meal_time)
    @name=name
    @preferred_food=preferred_food
    @meal_time=meal_time
    end

    def eats_at
      if (@meal_time <=12)
        return "#{@meal_time}AM"
    #else
    #  return "(@meal_time-12)PM"
  elsif (@meal_time>12)
    return "#{@meal_time-12}PM"
  end

    end


      def meaow
        return "#{@name} and I eat #{@preferred_food} at #{eats_at}"
        end

end

#crearting instances of the class Cat
#cute=Cat.new(cute,berry,12)
tiny=Cat.new('tiny','tuna',11)

puts "My name is #{tiny.meaow}"
