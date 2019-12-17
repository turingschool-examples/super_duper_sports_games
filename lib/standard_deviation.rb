class StandardDeviation
  def initialize(array_of_nums)
    @numbers = array_of_nums
  end

  def sum_integers
    @numbers.sum
  end

  def length_of_array
    @numbers.length
  end

  def average_of_integers
    (sum_integers.to_f / length_of_array).round(2)
  end

  def subtract_integers
    @numbers.map { |number| (number - average_of_integers).round(2) }
  end

  def square_integers
    subtract_integers.map { |integer| (integer ** 2).round(2) }
  end

  def sum_of_squares
    square_integers.sum
  end

  def divide_by_length
    (sum_of_squares / length_of_array).round(2)
  end

  def get_square_root
    Math.sqrt(divide_by_length).round(2)
  end

  def get_standard_deviation
    get_square_root
  end
end

ages = [24, 30, 18, 20, 41]

# When you find the standard deviation, print it out
standard_dev = StandardDeviation.new(ages)

p standard_dev.get_standard_deviation