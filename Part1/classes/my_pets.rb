require_relative 'cat'
require_relative 'dog'

class MyPets
  def initialize
    @dogs = []
    @cats = []
  end
  def to_s
    puts "Hi! My pets are:"
    puts " Dogs ".center(50, '*')
    puts @dogs
    puts " Cats ".center(50, '*')
    puts @cats
  end

  def add_dog(name, breed)
    @dogs << Dog.new(name, breed)
  end
  def add_cat(name)
    @cats << Cat.new(name)
  end
end

pets = MyPets.new
pets.add_dog("Chester", "Labrador")
pets.add_dog("Boby", "Cocker Spaniel")
pets.add_cat("Canela")
puts pets
