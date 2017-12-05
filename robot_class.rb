class Robot
  
  def initialize(number_of_legs)
    @number_of_legs = number_of_legs
  end

  def add_leg
    @number_of_legs += 1
  end
  def walk
    return "I'm walking on my " + @number_of_legs.to_s + " legs!"
  end
end
