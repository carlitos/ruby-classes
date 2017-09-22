# Importar clase
require_relative 'pet'

class Dog < Pet
  attr_accessor :breed

  def initialize(name, breed)
    super(name)
    @breed = breed

  end

  def bark
    "Woof Woof"
  end

  def sound
    bark
  end

end

if __FILE__ == $0
  my_dog = Dog.new("Chester", "Labrador")
  puts my_dog.name
  puts my_dog.breed
  puts my_dog.bark
  puts my_dog
end
