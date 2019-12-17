ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
def standard_deviation(ages)
  sum_of_all_nums = sum_all(ages)
  total_number_in_array = num_of_integers(ages)
  average = average(sum_of_all_nums, total_number_in_array)
  average_subtracted = subtract_each_by_average(ages, average)
  squared = result_squared(average_subtracted)
  squared_sum = sum_all_squared(squared)
  number = divide_squared_sum_by_count(squared_sum, squared)
  result = square_root(number)
end

def sum_all(array)
  array.sum
end

def num_of_integers(array)
  array.length
end

def average(sum, total)
  (sum / total.to_f).round(1)
end

def subtract_each_by_average(array, average)
  array.map {|num| (num - average).round(1)}
end

def result_squared(new_array)
  new_array.map {|num| (num * num).round(2)}
end

def sum_all_squared(array)
  (array.sum).round(1)
end

def divide_squared_sum_by_count(sum, array)
  (sum / array.length).round(2)
end

def square_root(number)
  (Math.sqrt(number)).round(2)
end
