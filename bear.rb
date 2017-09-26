class Bear

  def initialize (name, noise, food_hoard)
    @name = name
    @stomach = []
    @noise = noise
    @food_hoard = food_hoard
  end

  def stomach_size()
    @stomach.length
  end

  def can_eat(fish)
    @stomach << fish
  end

  def can_take(river)
    fish = river.remove_fish()
    @stomach << fish
  end


  def can_roar()
    @noise
  end

  def food_count
    @food_hoard
  end



end
