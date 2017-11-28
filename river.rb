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

  def remove_fish(fish_to_remove)
    index = 0
    for fish in @fishes
      if fish == fish_to_remove
        break
      end
        index += 1
    end
    @fishes.delete_at(index)
  end

  def fish_count()
    @fishes.count()
  end

end
