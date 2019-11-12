require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup ()
    @river = River.new("Himekawa")
  end

  def test_can_create_river
    assert_equal(River, @river.class())
  end

  def test_return_river_name
    assert_equal("Himekawa", @river.name)
  end

end
