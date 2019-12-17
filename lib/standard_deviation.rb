ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

sum = ages.sum

numbers = ages.length

divide = sum.to_f / numbers.to_f

subtract = ages.map do |age|
  (age - divide).round(2)
end

square = subtract.map do |square|
  (square * square).round(2)
end

add = square.sum

divide_again = add / numbers

result = Math.sqrt(divide_again).round(2)

print result
# When you find the standard deviation, print it out
