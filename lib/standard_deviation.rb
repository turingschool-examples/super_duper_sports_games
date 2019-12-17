
ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
class StandardDeviation

  attr_reader :ages

  def initialize(ages)
    @ages = ages
  end

  def sum_of_integers
    total = 0
    @ages.each do |age|
      total += age
    end
    total
  end

  def number_of_integers
    amount = 0
    @ages.each do |age|
      amount += 1
    end
    amount
  end

  def find_average
    sum_of_integers.to_f / number_of_integers
  end

  def integer_minus_average
    @ages.map do |age|
      age = age - find_average
      age.round(1)
    end
  end

  def integer_minus_average_squared
    integer_minus_average.map do |number|
      number = number * number
      number.round(2)
    end
  end

  def sum_of_squared
    sum_squared = 0
    integer_minus_average_squared.each do |number|
      sum_squared += number
    end
    sum_squared.round(1)
  end

  def squared_devided_by_amount
    sum_of_squared/number_of_integers
  end

  def find_standard_deviation
    Math.sqrt(squared_devided_by_amount).round(2)
  end
end
# When you find the standard deviation, print it out
