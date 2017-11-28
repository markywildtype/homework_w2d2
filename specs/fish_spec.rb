require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < Minitest::Test

  def setup
    @pike = Fish.new("Pike")
    @salmon = Fish.new("Salmon")
    @trout = Fish.new("Trout")
    @haddock = Fish.new("Haddock")
  end

  def test_fish_name
    assert_equal("Trout", @trout.fish_name)
  end

end
