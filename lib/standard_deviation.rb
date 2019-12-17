ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
def standard_deviationd(ages)
  a_sum = ages.sum
  a_count = ages.count
  a_mean = (a_sum / a_count.to_f)
  a_minus_mean = ages.map {|age| (age - a_mean).round(2)}
  squared = a_minus_mean.map {|num| (num * num).round(3)}
  squared_sum = a_minus_mean_squared.sum
  squared_sum_div_by_count = squared_sum/a_count
  std_dev = Math.sqrt(squared_sum_div_by_count).round(2)
end

# When you find the standard deviation, print it out
p standard_deviation
