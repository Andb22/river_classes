require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

def setup ()
  @fish = fish.new("George")
end

def test_can_create_fish
  assert_equal(Fish, @fish.class())
end



end
