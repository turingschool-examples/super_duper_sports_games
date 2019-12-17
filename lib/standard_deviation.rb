ages = [24, 30, 18, 20, 41]


ages = [24, 30, 18, 20, 41]

sum = ages.sum
# p sum
length = ages.length
# p length
mean = ages.sum/ages.length.to_f
# p mean
minus = []
ages.each do |age|
minus << age.to_f.round - mean
# p minus
end

square = []
minus.each do |age|
  square << (age ** 2).round(2)
# p square
end

squared_sum = square.sum
# p squared_sum
squared_divide = squared_sum/length
# p squared_divide
standard_deviation = Math.sqrt(squared_divide).round(2)
# p minus
p standard_deviation
