require './test/test_helper'
require './lib/standard_deviation'

class StandardDeviationTest < MiniTest::Test


   def setup
      @ages = [24, 30, 18, 20, 41]
      @first_deviation = StandardDeviation.new(@ages)
   end

   def test_standard_deviation_exists
      assert_instance_of StandardDeviation, @first_deviation
      assert_instance_of Float, @first_deviation.standard_deviation
      assert_equal 8.28, @first_deviation.standard_deviation
   end

   def test_summed_data
      assert_equal 133, @first_deviation.summed_data
      assert_instance_of Integer, @first_deviation.summed_data
   end

   def test_calculate_average
      assert_equal 26.6, @first_deviation.calculate_average
      assert_instance_of Float, @first_deviation.calculate_average
   end

   def test_subtract_each_integer_by_average
      assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], @first_deviation.subtract_each_integer_by_average
      assert_instance_of Array, @first_deviation.subtract_each_integer_by_average
   end

   def test_squared_subtracted_data
      assert_equal [6.76, 11.56, 73.96, 43.56, 207.36], @first_deviation.squared_subtracted_data
      assert_instance_of Array, @first_deviation.squared_subtracted_data
   end

   def test_divide_summed_integers
      assert_equal 68.64, @first_deviation.divide_summed_integers
      assert_instance_of Float, @first_deviation.divide_summed_integers
   end

   def test_square_rooted_data
      assert_equal 8.28, @first_deviation.square_rooted_data
      assert_instance_of Float, @first_deviation.square_rooted_data
   end
end