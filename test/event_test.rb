require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/games'
require_relative '../lib/event'
require 'pry'

class EventTest < Minitest::Test

  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_event_exists
    assert_instance_of Event, @event
    assert_equal @event.name, "Curling"
    assert_equal @event.ages, [24, 30, 18, 20, 41]
  end

  def test_can_return_max_or_min_age
    assert_equal @event.max_age, 41
    assert_equal @event.min_age, 18
  end

  def test_event_can_return_averge_age
    assert_equal @event.average_age, 26.6
  end

  def test_event_can_return_standard_deviation
    assert_equal @event.standard_deviation, 8.28
  end
end
