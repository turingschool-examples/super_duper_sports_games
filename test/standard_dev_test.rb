require './lib/standard_dev'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'


class StandardDevTest <Minitest::Test

  def setup
    @ages = StandardDev.new(ages = [24, 30, 18, 20, 41])
    @input = ages = [24, 30, 18, 20, 41]
  end

  def test_it_exists
    assert_instance_of StandardDev, @ages
  end

  def test_standard_dev_returns_standard_deviation
    assert_equal 8.28, @ages.standard_dev(@input)
  end
end
