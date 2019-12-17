require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

  class EventTest <Minitest::Test
    def setup
      @event = Event.new("Curling", [24, 30, 18, 20, 41])
    end

  def test_it_exists
    assert_instance_of Event, @event
  end

  def test_it_has_attributes
    assert_equal "Curling", @event.name
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

  def test_it_knows_max_and_min_ages
    ages = [24, 30, 18, 20, 41]
    assert_equal 41, @event.max_age(ages)
    assert_equal 18, @event.min_age(ages)
  end

  def test_it_nows_average_age_and_std_dev
    ages = [24, 30, 18, 20, 41]
    assert_equal 26.6, @event.average_age(ages)
    assert_equal 8.28, @event.standard_deviation_age(ages)
  end







  end
