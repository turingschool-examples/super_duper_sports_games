require 'pry'
ages = [24, 30, 18, 20, 41]
holder1 = []
holder2 =[]
average = (ages.sum.to_f / ages.length)
  ages.each do |age|
    holder1 << (age - average).round(1)
  end
  holder1.each do |num|
    holder2 << (num * num)
  end
# binding.pry
standard_deviation = Math.sqrt(holder2.sum/ages.length).round(2)
p standard_deviation
# When you find the standard deviation, print it out
