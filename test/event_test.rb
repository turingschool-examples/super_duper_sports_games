require './lib/event'
require './lib/games'
require './lib/standard_deviation'
require 'minitest/autorun'
require 'minitest/pride'

class EventTest < Minitest::Test

    def test_it_exists
        event = Event.new("Games", [24, 30, 18, 20, 41])
        assert_instance_of Event, event
    end

    def test_it_has_attributes
        event = Event.new("Games", [24, 30, 18, 20, 41])
        assert_equal "Games", event.name 
        assert_equal [24, 30, 18, 20, 41], event.ages 
    end
    
    def test_it_can_get_out_max_age
        event = Event.new("Games", [24, 30, 18, 20, 41])
        assert_equal 41, event.max_age
    end

    def test_it_can_get_youngest_age
        event = Event.new("Games", [24, 30, 18, 20, 41])
        assert_equal 18, event.min_age
    end

    def test_it_can_get_average_age
        event = Event.new("Games", [24, 30, 18, 20, 41])
        assert_equal 26.6, event.average_age
    end
end 