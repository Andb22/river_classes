require("MiniTest/autorun")
require('MiniTest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

def setup ()
  @fish = Fish.new("George")
end

def test_can_create_fish
  assert_equal(Fish, @fish.class())
end

def test_return_fish_name
  assert_equal("George", @fish.name)
end


end
