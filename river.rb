class River

def initialize(name, fish, fish_population)
  @name = name
  @fish = []
  @population = fish_population
end

def fish_count()
  @fish.count
end

def add_fish(fish)
  @fish << fish
end

def remove_fish()
  @fish.pop()
end

def hold_many_fish(fish1, fish2, fish3)
  @fish << fish1 << fish2 << fish3
end



def population
  @population
end

end
