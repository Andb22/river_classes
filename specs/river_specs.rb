require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup ()
    @river = River.new("Himekawa")
    @fish = Fish.new("Marlin")
  end

  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_return_river_name()
    assert_equal("Himekawa", @river.name())
  end

  def test_river_fish_count()
    assert_equal(0, @river.fish_count)
  end

  def test_river_add_fish()
    @river.add_fish(@fish)
    assert_equal(1, @river.fish_count)
  end

  def test_lose_fish()
    @river.add_fish(@fish)
    @river.lose_fish(@fish)
    assert_equal(0, @river.fish_count)
  end

end
