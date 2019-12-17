require 'minitest/autorun'
require 'minitest/pride'
require './lib/standard_deviation'

class StandardDeviationTest < Minitest::Test

  def setup
    @ages = StandardDeviation.new([24, 30, 18, 20, 41])
    @sum = @ages.sum_an_array
    @count = @ages.elements_in_array
  end

  def test_it_exists
    assert_instance_of StandardDeviation, @ages
  end

  def test_it_has_attributes
    assert_equal [24, 30, 18, 20, 41], @ages.array_of_numbers
  end

  def test_it_can_sum_an_array
    assert_equal 133, @ages.sum_an_array
  end

  def test_it_can_count_all_elements_in_array
    assert_equal 5, @ages.elements_in_array
  end

  def test_it_can_calculate_the_mean_in_array
    assert_equal 26.6, @ages.calculate_mean
  end

  def test_it_can_subtract_each_integer_by_the_mean
    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], @ages.subtract_int_by_mean
  end

  def test_it_can_square_numbers
    @ages.subtract_int_by_mean
    assert_equal [6.76, 11.56, 73.96, 43.56, 207.36], @ages.square_array
  end

  def test_it_can_sum_after_math_applied
    @ages.subtract_int_by_mean
    @ages.square_array
    assert_equal 343.2, @ages.new_sum_of_array
  end

  def test_it_can_divide_results_from_new_sum
    @ages.subtract_int_by_mean
    @ages.square_array
    assert_equal 68.64, @ages.divide_new_sum
  end

  def test_it_can_square_root
    @ages.subtract_int_by_mean
    @ages.square_array
    @ages.divide_new_sum
    assert_equal 8.28, @ages.square_root
  end

  def test_it_can_calculate_standard_deviation
    assert_equal 8.28, @ages.calculate_standard_deviation
  end
end
