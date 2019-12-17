require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_it_has_attributes
    assert_equal "Curling", @event.name
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

  def test_can_return_max_and_min_and_avg_age
    assert_equal 41, @event.max_age
    assert_equal 18, @event.min_age
    assert_equal 26.6, @event.average_age
  end

  def test_can_calculate_standard_deviation
    assert_equal 8.28, @event.standard_deviation
  end

end
