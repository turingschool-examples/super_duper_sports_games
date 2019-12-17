require './test/test_helper'
require './lib/event'

class EventTest < MiniTest::Test

   def setup
      @new_event = Event.new("Curling", [24, 30, 18, 20, 41])
      @first_deviation = StandardDeviation.new(@new_event.ages)
   end

   def test_event_exists
      assert_instance_of Event, @new_event
      assert_equal "Curling", @new_event.name
      assert_equal [24, 30, 18, 20, 41], @new_event.ages
   end

   def test_event_max_age_method
      assert_equal 41, @new_event.max_age
   end

   def test_event_min_age_method
      assert_equal 18, @new_event.min_age      
   end

   def test_average_age_method
      assert_equal 26.6, @new_event.average_age
   end

   def test_event_standard_deviation_method
      assert_equal 8.28, @first_deviation.standard_deviation
   end
end