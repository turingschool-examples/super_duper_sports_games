require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test
  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

   def test_event_class_name
    assert_equal "Curling", @event.name
   end

  def test_ages_array
    assert_equal [24, 30, 18, 20, 41], @event.age
  end

  def test_max_age
    assert_equal 41, @event.max_age
  end

  def test_min_age
    assert_equal 18, @event.min_age
  end

  def test_average_age
    assert_equal 26.6, @event.average_age
  end

  def test_standard_deviation
    assert_equal 8.28, @event.standard_deviation_age
  end

end
