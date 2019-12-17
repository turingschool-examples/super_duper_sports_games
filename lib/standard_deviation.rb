ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
sum = 0
ages.each { |age| sum += age }
quotient = sum.to_f / ages.length

diff_ages = []
ages.each { |age| diff_ages << (age - quotient).round(2) }

squared_diffs = []
diff_ages.each { |age| squared_diffs << (age * age).round(2) }

squared_diffs_sum = 0
squared_diffs.each { |age| squared_diffs_sum += age.round(2) }

quotient2 = squared_diffs_sum.round(2) / ages.length
standard_deviation = Math.sqrt(quotient2).round(2)
# When you find the standard deviation, print it out
puts standard_deviation
