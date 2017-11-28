class Bear

attr_reader :name, :stomach_contents

  def initialize(name, stomach_contents)
    @name = name
    @stomach_contents = stomach_contents
  end

  def get_fish_from_river(river, fish)
    @stomach_contents << fish
    river.remove_fish(fish)
  end

  def bear_roar()
    return "ROAR!"
  end

  def food_count()
    @stomach_contents.count()
  end

end
