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

def take_fish(fish)
  @stomach << fish
end



end
