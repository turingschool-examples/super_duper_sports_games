require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/event"

class EventTest < MiniTest::Test
  def setup
    ages = [24, 30, 18, 20, 41]
    @event = Event.new("Curling", ages)
  end

  def test_event_is_made_with_name_and_ages
    assert_instance_of Event, @event
    assert_equal "Curling", @event.name
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

  def test_event_can_find_max_age_and_min_age
    assert_equal 41, @event.max_age
    assert_equal 18, @event.min_age
  end

  def test_event_can_average_ages
    assert_equal 26.6, @event.average_age
  end

  def test_event_can_find_standard_deviation
    assert_equal 8.28, @event.standard_deviation_age(@event.ages)
  end

end
