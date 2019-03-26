class Bear
  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_fish_to_stomach(fish)
    @stomach.push(fish)
  end

  def roar()
    return "Rawr"
  end

  def food_count()
    return @stomach.size()
  end


end
