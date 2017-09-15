class Dog
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name.capitalize
    @breed = breed
  end

  def to_s
    "#{@name} is a #{@breed}: #{bark}"
  end

  def bark
    "Woof Woof"
  end
end

if __FILE__ == $0
  my_dog = Dog.new("Chester", "Labrador")
  puts my_dog.name
  puts my_dog.breed
  puts my_dog.bark
  puts my_dog
end
