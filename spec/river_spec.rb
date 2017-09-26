require 'minitest/autorun'
require 'minitest/rg'

require_relative '../river'
require_relative '../fish'
require_relative '../bear'

class RiverTest < MiniTest::Test

  def setup()
    @trout = Fish.new("Fred")
    @salmon = Fish.new("Steve")
    @pirahna = Fish.new("Pete")
    @river = River.new("Amazon", [@trout], 3)
    @bear = Bear.new("Yogi","ROAAR", 3)
  end

  def test_fish_count
    assert_equal(0, @river.fish_count)
  end

  def test_add_fish
    @river.add_fish(@trout)
    assert_equal(1, @river.fish_count)
  end

  def test_remove_fish
    @river.remove_fish(@trout)
    assert_equal(0, @river.fish_count)
  end

  def test_can_hold_many_fish
    @river.hold_many_fish(@trout, @salmon, @pirahna)
    assert_equal(3, @river.fish_count())
  end

  def test_lose_when_bear_takes()
    @river.lose_when_bear_takes(@trout)
    assert_equal(0, @river.fish_count())
    assert_equal(1, @bear.stomach_size())
  end

  def test_river_fish_count()
    assert_equal(3, @river.population())
  end


end
