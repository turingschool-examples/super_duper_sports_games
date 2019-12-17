class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    (@ages.sum.to_f / @ages.length).round(2)
  end

  def standard_deviation_age
    adjusted_ages = ages.map { |age| (age - average_age) }
    adjusted_squares = adjusted_ages.map { |age| (age * age) }
    sum_average = adjusted_squares.sum / ages.length
    Math.sqrt(sum_average).round(2)
  end
end
