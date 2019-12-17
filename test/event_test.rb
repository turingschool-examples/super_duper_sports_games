require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/event'

class EventTest < Minitest::Test 

  def setup
    @event = Event.new("bowling", [56, 57, 53, 51])
  end

  def test_it_exists
    assert_instance_of Event, @event
  end

  def test_it_has_attributes
    assert_equal "bowling", @event.name
    assert_equal [56, 57, 53, 51], @event.ages
  end
  
  def test_it_can_find_the_max_age 
    assert_equal 57, @event.max_age
  end

  def test_it_can_find_the_min_age 
    assert_equal 51, @event.min_age
  end

  def test_it_can_return_the_average_age
    assert_equal 54.25, @event.average_age
  end

  def test_it_can_return_the_SD_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 8.28, event.standard_deviation_age
  end

end
