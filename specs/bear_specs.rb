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
    @river.add_fish(@fish)
    # @river.lose_fish(@fish)
    @bear.take_fish(@fish, @river)
    assert_equal(1, @bear.stomach())
    assert_equal(0, @river.fish_count())
  end

end
