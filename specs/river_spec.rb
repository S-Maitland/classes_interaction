require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish_1 = Fish.new("trout")
    @fish_2 = Fish.new("salmon")
    @fish_3 = Fish.new("pike")
  end

  def test_river_has_name()
    assert_equal("Amazon", @river.name)
  end

  def test_fish_poplation_at_start_0()
    assert_equal(0, @river.fish_count())
  end

  def test_add_fish_to_river()
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    assert_equal(3, @river.fish_count())
  end

  def test_remove_fish()
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    @river.remove_fish(@fish_3)
    assert_equal(2, @river.fish_count())
  end

end
