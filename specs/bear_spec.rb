require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class TestBear < Minitest::Test

  def setup
    @yogi = Bear.new("Yogi", [])
    @thames = River.new("Thames", [])
    @salmon = Fish.new("Salmon")
    @trout = Fish.new("Trout")
    @haddock = Fish.new("Haddock")
  end

  def test_get_bear_name
    assert_equal("Yogi", @yogi.name())
  end

  def test_get_stomach_contents
    assert_equal([], @yogi.stomach_contents)
  end

  def test_get_fish_from_river
    @thames.add_fish(@salmon)
    @thames.add_fish(@trout)
    @thames.add_fish(@haddock)
    @yogi.get_fish_from_river(@thames, @salmon)

    assert_equal([@salmon], @yogi.stomach_contents)
    assert_equal([@trout, @haddock], @thames.fishes)
  end

end
