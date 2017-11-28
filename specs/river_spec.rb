require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < Minitest::Test

  def setup
    @pike = Fish.new("Pike")
    @amazon = River.new("Amazon", [])
  end

  def test_add_fish_to_river
    @amazon.add_fish(@pike)
    # fish_in_river = @amazon.fishes() #should give the array of fish in the amazon
    # actual = fish_in_river.count()
    # assert_equal(1, @amazon.fishes().count)
    assert_equal(["Pike"], @amazon.fishes())
  end

  # def test_fish_in_river
  #
  #   assert_equal("Pike", @amazon.fishes)
  # end

end
