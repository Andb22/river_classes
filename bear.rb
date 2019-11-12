class Bear

attr_reader :name, :type

def initialize(name, type )
  @name = name
  @type = type
  @stomach = []
end

def stomach()
  return @stomach.length
end

def take_fish(fish, river)
  @stomach << fish
  river.lose_fish(fish)
end

def roar
  return "ROAR"
end

end
