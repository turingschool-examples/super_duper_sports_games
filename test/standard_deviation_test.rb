require 'minitest/autorun'
require 'minitest/pride'
require './lib/standard_deviation'

class StandardDeviationTest < Minitest::Test

  def setup
    @standard_deviation = StandardDeviation.new([24, 30, 18, 20, 41])
  end

  def test_it_exists
    assert_instance_of StandardDeviation, @standard_deviation
  end

  def test_it_has_attributes
    assert_equal [24, 30, 18, 20, 41], @standard_deviation.ages
  end

  def test_it_produces_the_sum_of_all_integers
    assert_equal 133, @standard_deviation.sum_of_integers
  end

  def test_it_can_find_the_number_of_integers_in_arra
    assert_equal 5, @standard_deviation.number_of_integers
  end

  def test_it_can_find_the_average
    assert_equal 26.6, @standard_deviation.find_average
  end

  def test_it_can_produce_array_of_each_number_minus_average
    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], @standard_deviation.integer_minus_average
  end

  def test_it_can_produce_an_array_of_integer_minus_average_squared
    assert_equal [6.76, 11.56, 73.96, 43.56, 207.36], @standard_deviation.integer_minus_average_squared
  end

  def test_it_has_the_sum_of_all_squared_numbers
    assert_equal 343.2, @standard_deviation.sum_of_squared
  end

  def test_it_can_devide_sum_of_all_squared_by_number_of_integers
    assert_equal 68.64, @standard_deviation.squared_devided_by_amount
  end

  def test_it_can_calculate_standard_deviation
    assert_equal 8.28, @standard_deviation.find_standard_deviation
  end
end
