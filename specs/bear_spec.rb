require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test
  def setup()
    @bear = Bear.new("Yogi","grizzly")
    @river = River.new("Amazon")
    @fish_1 = Fish.new("trout")
    @fish_2 = Fish.new("salmon")
    @fish_3 = Fish.new("pike")
  end

  def test_get_bear_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_get_bear_type()
    assert_equal("grizzly", @bear.type)
  end

  def test_get_food_count_0()
    assert_equal(0, @bear.food_count())
  end

  def test_bear_takes_fish_from_river()
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    @river.remove_fish(@fish_1)
    @bear.add_fish_to_stomach(@fish_1)
    assert_equal(2, @river.population_count())
    assert_equal(1, @bear.food_count())
  end

  def test_bear_can_roar()
    assert_equal("Rawr", @bear.roar())
  end

  def test_food_count()
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    @river.remove_fish(@fish_1)
    @river.remove_fish(@fish_2)
    @bear.add_fish_to_stomach(@fish_1)
    @bear.add_fish_to_stomach(@fish_2)
    assert_equal(2 ,@bear.food_count())
  end

end
