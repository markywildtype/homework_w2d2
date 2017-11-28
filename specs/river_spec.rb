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

  def test_fish_in_river
    @amazon.add_fish(@salmon)
    assert_equal(true, @amazon.fish_in_river(@salmon))
  end

  def test_remove_fish
    @amazon.add_fish(@pike)
    @amazon.add_fish(@trout)
    @amazon.add_fish(@haddock)
    @amazon.remove_fish(@trout)
    assert_equal(2, @amazon.fishes().count())
  end

  def test_fish_count
    @amazon.add_fish(@pike)
    @amazon.add_fish(@trout)
    @amazon.add_fish(@haddock)
    assert_equal(3, @amazon.fish_count())
  end

end
