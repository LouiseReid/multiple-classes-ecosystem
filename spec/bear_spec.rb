require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bear'
require_relative '../river'
require_relative '../fish'

class BearTest < MiniTest::Test

  def setup()
    @trout = Fish.new("Fred")
    @bear = Bear.new("Yogi","ROAAR", 3)
    @river = River.new("Amazon", [@trout], 3)
  end

  def test_stomach_size
    assert_equal(0, @bear.stomach_size())
  end

  def test_can_eat
    @bear.can_eat(@trout)
    assert_equal(1, @bear.stomach_size)
  end

  # def test_can_take
  #   @bear.can_take(@river, @bear)
  #   # assert_equal(0, @river.fish_count)
  #   assert_equal(1, @bear.stomach_size())
  # end

  def test_bear_can_roar()
    actual = @bear.can_roar()
    assert_equal("ROAAR", actual)
  end

  def test_bear_has_food_count()
    assert_equal(3, @bear.food_count())
  end


end
