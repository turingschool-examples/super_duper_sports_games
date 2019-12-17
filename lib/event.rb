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
    (@ages.sum / @ages.length.to_f).round(2)
  end

  def standard_deviation_age
    age_minus_average_age = @ages.map { |age| age - average_age }

    age_minus_average_age_squared = age_minus_average_age.map { |number| number * number }

    age_minus_average_age_squared_sum = age_minus_average_age_squared.sum

    age_squared_sum_divided_by_array_length = age_minus_average_age_squared_sum / @ages.length

    Math.sqrt(age_squared_sum_divided_by_array_length).round(2)
  end

end
