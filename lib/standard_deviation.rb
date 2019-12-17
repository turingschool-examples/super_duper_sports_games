ages = [24, 30, 18, 20, 41]

total = ages.sum

mean = total / ages.count.to_f

subtract_mean = ages.map {|age| (age - mean).round(2)}

squared = subtract_mean.map {|num| (num ** 2).round(2)}

sum = squared.reduce(:+).round(2)

mean2 = sum / ages.count

standard_deviation = Math.sqrt(mean2).round(2)

p standard_deviation