ages = [24, 30, 18, 20, 41]

sum_of_ages = ages.sum

number_of_individuals = ages.length

average_age = sum_of_ages / number_of_individuals.to_f

y = ages.map { |age| age - average_age }

z = y.map { |y| y * y }

a = z.sum

b = a / number_of_individuals

standard_deviation = Math.sqrt(b).round(2)
