require_relative './standard_deviation'
class Event
  attr_reader :name, 
              :ages

  def initialize(event_name, ages_array)
    @name = event_name
    @ages = ages_array
    @standard_dev = StandardDeviation.new(@ages)
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    @standard_dev.average_of_integers
  end

  def standard_deviation_age
    @standard_dev.get_standard_deviation
  end
end
