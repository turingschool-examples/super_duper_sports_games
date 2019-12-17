class Event
  attr_reader :name, :ages

  def initialize(name, ages = [])
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
    avg = ages.sum / ages.count.to_f
  end

  def standard_deviation_age
    a_sum = @ages.sum
    a_count = @ages.count
    a_mean = (a_sum / a_count.to_f)
    a_minus_mean = @ages.map {|age| (age - a_mean).round(2)}
    squared = a_minus_mean.map {|num| (num * num).round(3)}
    squared_sum = squared.sum
    squared_sum_div_by_count = squared_sum/a_count
    std_dev = Math.sqrt(squared_sum_div_by_count).round(2)
  end
end
