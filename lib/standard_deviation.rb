ages = [24, 30, 18, 20, 41]

ages_sum = ages.sum
p ages_sum

number_of_ints = ages.length
p number_of_ints

ages_mean = ages_sum.to_f / number_of_ints.to_f
p ages_mean

array_sub_mean = ages.map do |age|
  (age - ages_mean).round(2)
end
p array_sub_mean

squared_array = array_sub_mean.map do |num|
  (num * num).round(2)
end
p squared_array

squared_array_sum_and_div = squared_array.sum / number_of_ints
p squared_array_sum_and_div

standard_deviation = Math.sqrt(squared_array_sum_and_div).round(2)
p standard_deviation
