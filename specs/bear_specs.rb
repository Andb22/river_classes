require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../bear')

class BearTest < MiniTest::Test

  def setup ()
    @bear = Bear.new("Gentle Ben", "Grizzly")
  end

  def test_can_create_bear
    assert_equal(Bear, @bear.class())
  end

end
