require './pet'
class Cat < Pet

  def initialize(name)
    super(name)
    @health = 100
  end

  def meow
    "Miau!!!!"
  end

  def sound
    meow
  end

end

if __FILE__ == $0
  my_cat = Cat.new("Canela")
  puts my_cat.name
  puts my_cat.meow
  puts my_cat
end
