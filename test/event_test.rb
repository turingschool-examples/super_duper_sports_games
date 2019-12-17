require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < MiniTest::Test

  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end

  def test_it_has_a_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal "Curling", event.name
  end

  def test_participant_ages
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal [24, 30, 18, 20, 41], event.ages
    assert_equal 41, event.max_age
    assert_equal 18, event.min_age
    assert_equal 26.6, event.average_age
    assert_equal 8.28, event.standard_deviation_age
  end
end
