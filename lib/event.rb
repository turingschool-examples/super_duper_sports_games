

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
    average_num = ages.sum.to_f.round(2) / ages.length
    ages_less_average = ages.map { |num| num - average_num}
    squared_nums = ages_less_average.map { |num| num * num }
    average_after_squared = squared_nums.sum / ages.length
    Math.sqrt(average_after_squared).round(2)
  end

end
