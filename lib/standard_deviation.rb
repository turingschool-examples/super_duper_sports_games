ages = [24, 30, 18, 20, 41]

sum = ages.sum

count = ages.length

average = (sum / count.to_f).round(2)

sub_array = ages.map do |age|
  (age - average).round(2)
end

sq_array = sub_array.map do |num|
  (num * num).round(2)
end

sum_num = sq_array.sum do |num|
  num
end

second_average = sum_num / count

sq_rt = Math.sqrt(second_average)

# When you find the standard deviation, print it out
p sq_rt.round(2)
