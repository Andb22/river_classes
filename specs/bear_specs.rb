require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup ()
    @bear = Bear.new("Gentle Ben", "Grizzly")
    @fish = Fish.new("Zippy")
  end

  def test_can_create_bear
    assert_equal(Bear, @bear.class())
  end

  def test_return_bear_name
    assert_equal("Gentle Ben", @bear.name)
  end

  def test_can_take_fish
    assert_equal("Zippy", @fish.name)
  end

end
