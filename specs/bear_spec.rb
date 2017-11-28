require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class TestBear < Minitest::Test

  def setup
    @yogi = Bear.new("Yogi", [])
  end

  def test_get_bear_name
    assert_equal("Yogi", @yogi.name())
  end

end
