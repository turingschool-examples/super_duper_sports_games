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
    sum_integers.to_f / length_of_array
  end

  def subtract_integers
    @numbers.map { |number| number - average_of_integers }
  end

  def square_integers
    subtract_integers.map { |integer| integer ** 2 }
  end

  def sum_of_squares
    square_integers.sum
  end

  def divide_by_length
    sum_of_squares / length_of_array
  end

  def get_square_root
    Math.sqrt(divide_by_length).round(2)
  end

  def print_standard_deviation
    print "The standard deviation of the set is: #{get_square_root}\n"
  end
  
end

ages = [24, 30, 18, 20, 41]

# When you find the standard deviation, print it out
standard_dev = StandardDeviation.new(ages)

standard_dev.print_standard_deviation