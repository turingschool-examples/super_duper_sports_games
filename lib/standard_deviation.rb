ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
average_age = (ages.sum.to_f / ages.length)

adjusted_ages = ages.map { |age| (age - average_age) }

adjusted_squares = adjusted_ages.map { |age| (age * age) }

sum_of_adjusted_squares = adjusted_squares.sum

average_of_sum = sum_of_adjusted_squares / ages.length

standard_deviation = Math.sqrt(average_of_sum).round(2)
# When you find the standard deviation, print it out
puts standard_deviation
