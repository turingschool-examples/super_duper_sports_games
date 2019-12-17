class StandardDeviation
  def initialize(ages)
    @ages = ages
  end

  def sum
    @ages.sum
  end

  def length
    @ages.length
  end

  def average
    average = @ages.sum / @ages.length.to_f
    average.round(1)
  end

  def subtract_average
    @ages.map do |age|
      (age - average).round(1)
    end
  end

  def square_number
    subtract_average.map do |number|
      (number * number).round(2)
    end
  end

  def squares_sum
    square_number.sum
  end

  def squares_average
    (squares_sum / length).round(2)
  end

  def square_root
    Math.sqrt(squares_average).round(2)
  end
end

ages = [24, 30, 18, 20, 41]
deviation = StandardDeviation.new(ages)

puts deviation.square_root
