require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup ()
    @bear = Bear.new("Gentle Ben", "Grizzly")
    @fish1 = Fish.new("Zippy")
    @fish2 = Fish.new("Spike")
  end

  def test_can_create_bear()
    assert_equal(Bear, @bear.class())
  end

  def test_return_bear_name()
    assert_equal("Gentle Ben", @bear.name())
  end

  def test_empty_stomach()
    assert_equal(0, @bear.stomach())
  end

  def test_take_fish()
    @river = River.new("Yukon")
    @river.add_fish(@fish1)
    # @river.lose_fish(@fish)
    @bear.take_fish(@fish1, @river)
    assert_equal(1, @bear.stomach())
    assert_equal(0, @river.fish_count())
  end

  def test_roar()
    assert_equal("ROAR", @bear.roar)
  end

  def test_food_count
    @river = River.new("Yukon")
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @bear.take_fish(@fish1, @river)
    @bear.take_fish(@fish2, @river)
    assert_equal(2, @bear.stomach)
  end

end
