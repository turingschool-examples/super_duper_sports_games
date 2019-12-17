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
    average = ages.sum.to_f / ages.count.to_f
    average.round(1)
  end

  def standard_deviation_age
    subtract_age_from_average = []
     ages.each do |age|
      age -= average_age.round(1)
      subtract_age_from_average << age.round(1)
    end
      squares = []
      subtract_age_from_average.each do |number|
        number = number ** 2
        squares << number.round(2)
      end
      squares.sum

      summed_squares_divided = squares.sum / ages.length

      standard_deviation_age = Math.sqrt(summed_squares_divided).round(2)
  end
end
