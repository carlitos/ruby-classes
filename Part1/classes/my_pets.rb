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
    puts "Nombre del Perro: " + @dogs[0].name
    puts "Salud del perro #{@dogs[0].health}"
    puts " Cats ".center(50, '*')
    puts "Nombre del Gato; " + @cats[0].name
    puts "Salud del gato #{@cats[0].health}"
  end

  def add_dog(name, breed)
    @dogs << Dog.new(name, breed)
  end
  def add_cat(name)
    @cats << Cat.new(name)
  end
  def perro
    @dogs[0]
  end
  def gato
    @cats[0]
  end
  def dog_attack
    perro.bonus
    gato.damage
  end
  def cat_attack
    gato.bonus
    perro.damage
  end
end

pets = MyPets.new
pets.add_dog("Chester", "Labrador")
pets.add_dog("Boby", "Cocker Spaniel")
pets.add_cat("Canela")
puts pets
