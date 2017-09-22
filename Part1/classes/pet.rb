class Pet

  attr_accessor :name, :breed, :health

  def initialize(name)
    @name = name.to_s.capitalize
    @health = 100
  end

  def to_s
    "#{@name}: #{@breed} #{sound}"
  end

  def sound
    "Sonido"
  end

  def bonus
    @health += 10
  end

  def damage
    @health -= 10
  end

end
