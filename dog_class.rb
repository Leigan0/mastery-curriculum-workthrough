class Dog
  def bark
    "Woof!"
  end

  def num_of_legs
    4
  end

  def colour=(colour)
    @colour = colour
  end

  def observe
    "You see a " +@colour + " dog"
  end
end
