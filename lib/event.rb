class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    ages_sum = ages.sum
    number_of_ints = ages.length
    ages_mean = ages_sum.to_f / number_of_ints.to_f
    ages_mean
  end

  def standard_deviation
    ages_sum = ages.sum
    number_of_ints = ages.length
    ages_mean = ages_sum.to_f / number_of_ints.to_f
    array_sub_mean = ages.map do |age|
      (age - ages_mean).round(2)
    end
    squared_array = array_sub_mean.map do |num|
      (num * num).round(2)
    end
    squared_array_sum_and_div = squared_array.sum / number_of_ints
    standard_deviation = Math.sqrt(squared_array_sum_and_div).round(2)
  end
end
