class StandardDeviation
  attr_reader :array_of_numbers

  def initialize(array_of_numbers)
    @array_of_numbers = array_of_numbers
  end

  def calculate_standard_deviation
    sum_an_array
    elements_in_array
    calculate_mean
    subtract_int_by_mean
    square_array
    new_sum_of_array
    divide_new_sum
    square_root
  end

  def sum_an_array
    @array_of_numbers.sum
  end

  def elements_in_array
    @array_of_numbers.count
  end

  def calculate_mean
    sum_an_array / elements_in_array.to_f
  end

  def subtract_int_by_mean
    @array_of_numbers.map {|num| (num - calculate_mean).round(2)}
  end

  def square_array
    subtract_int_by_mean.map {|num| (num ** 2).round(2)}
  end

  def new_sum_of_array
    square_array.sum
  end

  def divide_new_sum
    new_sum_of_array / elements_in_array.to_f
  end

  def square_root
    Math.sqrt(divide_new_sum).round(2)
  end
end
