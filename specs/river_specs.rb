require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup ()
    @river = River.new("Himekawa", 5000)
  end

  def test_can_create_river
    assert_equal(River, @river.class())
  end


end
