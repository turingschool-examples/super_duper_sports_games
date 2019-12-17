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
    subtract = @ages.map do |age|
      (age - average_age).round(2)
    end
    square = subtract.map do |square|
      (square * square).round(2)
    end
    add = square.sum
    divide = add / @ages.length
    standard_deviation = Math.sqrt(divide).round(2)
  end
end
