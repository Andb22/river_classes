class River

attr_reader :name, :fish

def initialize(name)
  @name = name
  @fish = []
end

def fish_count()
  return @fish.length
end

def add_fish(fish)
  @fish.push(fish)
end

def lose_fish(fish)
  @fish.delete(fish)
end


end
