ages = [24, 30, 18, 20, 41]

sum = ages.sum

count = ages.size

average = sum.to_f / count

ages_differenciation = ages.map { |age| age - average.to_f}

squared_differenciation = ages_differenciation.map { |age| age **2}

sum_of_squared_differenciation = squared_differenciation.sum

squared_standard_deviation = sum_of_squared_differenciation / count

standard_deviation = Math.sqrt(squared_standard_deviation.to_f)

p standard_deviation.round(2)
# When you find the standard deviation, print it out
