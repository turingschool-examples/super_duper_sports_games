ages = [24, 30, 18, 20, 41]
sum = ages.sum.to_f
amount = ages.length

average = sum / amount

p average

new_array = ages.map do |age|
  new = age - average
   new.round(2)
 end
 p new_array

squared_array = new_array.map do |squared|
  square = squared ** 2
  square.round(2)
end
p squared_array

sumed = squared_array.sum

squared_average = sumed / squared_array.length

p standard_deviation = Math.sqrt(squared_average).round(2)
# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
