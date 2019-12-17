require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'
require './lib/games'

class EventTest < Minitest::Test
  def test_event_exists
    event1 = Event.new('Curling', [24, 30, 18, 20, 41])

    assert_instance_of Event, event1
  end

  def test_event_attributes
    event1 = Event.new('Curling', [24, 30, 18, 20, 41])

    assert_equal 'Curling', event1.name
    assert_equal [24, 30, 18, 20, 41], event1.ages
  end

  def test_event_max_age
    event1 = Event.new('Curling', [24, 30, 18, 20, 41])

    assert_equal 41, event1.max_age
  end

  def test_event_min_age
    event1 = Event.new('Curling', [24, 30, 18, 20, 41])

    assert_equal 18, event1.min_age
  end

  def test_event_average_age
    event1 = Event.new('Curling', [24, 30, 18, 20, 41])

    assert_equal 26.6, event1.average_age
  end

  def test_standard_deviation_of_event_ages
    event1 = Event.new('Curling', [24, 30, 18, 20, 41])

    assert_equal 8.28, event1.standard_deviation_age
  end
end
