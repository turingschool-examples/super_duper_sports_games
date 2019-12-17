ages = [24, 30, 18, 20, 41]

age_sum = ages.sum
age_count = ages.count
mean = age_sum.to_f/age_count.to_f

subtraction = ages.map do |age|
  age.to_f - mean.to_f
end

squared_sub = subtraction.map do |num|
  num**2
end

total_to_sqrt = squared_sub.sum / ages.count

total = Math.sqrt(total_to_sqrt)

p total
