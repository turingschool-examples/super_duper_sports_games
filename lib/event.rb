class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def age
    @ages
  end

  def max_age
    age.max.to_f
  end

  def min_age
    age.min.to_f
  end

  def count
    @ages.count.to_f
  end

  def average_age
    age.sum.to_f / count
  end

  def standard_deviation_age
    subtracted = ages.map do |age|
                  age.to_f - average_age.to_f
              end
    squared = subtracted.map do |subtract|
                subtract ** 2
              end
    square_sum = squared.sum
    divided = square_sum / count
    standard_deviation = Math.sqrt(divided)
    standard_deviation.round(2)
  end
end
