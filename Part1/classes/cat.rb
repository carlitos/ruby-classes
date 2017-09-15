class Cat
  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end

  def to_s
    "#{@name}: #{meow}"
  end

  def meow
    "Miau!!!!"
  end
end

if __FILE__ == $0
  my_cat = Cat.new("Canela")
  puts my_cat.name
  puts my_cat.meow
  puts my_cat
end
