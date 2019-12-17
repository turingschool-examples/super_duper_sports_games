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
    @ages.sum.to_f / @ages.length.to_f
  end

  def standard_deviation_age
    subtract_by_average = []
    ages.each do |age|
      x = age - average_age
      subtract_by_average << x.round(1)
    end
    squared_numbers = subtract_by_average.map do |number|
      x = number ** 2
      x.round(2)
    end
    sum_of_squares = squared_numbers.sum
    divide = sum_of_squares / ages.length
    square_root = Math.sqrt(divide).round(2)
    square_root
  end
end
