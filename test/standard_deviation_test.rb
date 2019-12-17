require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/standard_deviation'

class StandardDeviationTest < Minitest::Test
  def test_standard_deviation_exists
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_instance_of StandardDeviation, deviation
  end

  def test_sum
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 133, ages.sum
  end

  def test_length
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 5, deviation.length
  end

  def test_average
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 26.6, deviation.average
  end

  def test_subtract_average
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], deviation.subtract_average
  end

  def test_square_each_number
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal [6.76, 11.56, 73.96, 43.56, 207.36], deviation.square_number
  end

  def test_sum_of_squared_numbers
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 343.2, deviation.squares_sum
  end

  def test_average_of_squares
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 68.64, deviation.squares_average
  end

  def test_square_root_of_squares_average
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 8.28, deviation.square_root
  end
end
