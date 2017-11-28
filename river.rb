class River

attr_reader :river_name, :fishes

  def initialize(river_name, fishes)
    @river_name = river_name
    @fishes = fishes
  end

  def add_fish(fish_name)
    @fishes.push(fish_name)
  end

  def fish_in_river(fish_query)
    for fish in @fishes
      if fish == fish_query
        return true
      end
    end
  end

end
