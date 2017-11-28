require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < Minitest::Test

  def setup
    @pike = Fish.new("Pike")
    @salmon = Fish.new("Salmon")
    @trout = Fish.new("Trout")
    @haddock = Fish.new("Haddock")
    @amazon = River.new("Amazon", [])
  end

  def test_add_fish_to_river
    @amazon.add_fish(@pike)
    assert_equal([@pike], @amazon.fishes())
  end

  # def test_fish_in_river
  #
  #   assert_equal("Pike", @amazon.fishes)
  # end

end
