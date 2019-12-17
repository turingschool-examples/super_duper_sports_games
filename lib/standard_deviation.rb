ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
step3 = (ages.sum.to_f / ages.length.to_f)
step4 = ages.map { |age| (age - step3).round(2) }
step5 = step4.map { |step4_num| (step4_num * step4_num).round(2) }
step8 = (Math.sqrt(step5.sum / ages.length)).round(2)

# When you find the standard deviation, print it out
puts ""
puts "#{ages} <--- AGES"
puts "#{step8} <--- STANDARD DEVIATION"
puts""
