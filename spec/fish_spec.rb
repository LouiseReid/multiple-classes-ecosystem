require 'minitest/autorun'
require 'minitest/rg'

require_relative '../fish'

class FishTest < MiniTest::Test

  def setup()
    @trout = Fish.new("Fred")
  end

end
