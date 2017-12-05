class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hello, I'm #{@name}, and I'm #{@age.to_s} years old"
  end

  def get_older
    @age += 1
  end
end

leigh = Person.new("Leigh-ann", 29)
leigh.get_older

leigh.introduce

 # => "Hello, I'm Leigh-ann, and I'm 18 years old"
