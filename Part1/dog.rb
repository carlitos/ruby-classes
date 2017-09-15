class Dog
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name.capitalize
    @breed = breed
  end

  def to_s
    "#{@name} is a #{@breed} and he is doing: #{bark}"
  end

  def bark
    "Woof Woof"
  end
end

my_dog = Dog.new("Chester", "Labrador")
puts my_dog.name
puts my_dog.breed
puts my_dog.bark
puts my_dog
