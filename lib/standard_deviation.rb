ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
  sum = ages.sum
p sum

  average = (sum.to_f / ages.length).round(1)
p average

  subtract_by_average = []
    ages.each do |age|
      x = age - average
      subtract_by_average << x.round(1)
    end
p subtract_by_average

squared_numbers = subtract_by_average.map do |number|
  x = number ** 2
  x.round(2)
end
p squared_numbers

sum_of_squares = squared_numbers.sum
p sum_of_squares

divide = sum_of_squares / ages.length
p divide

square_root = Math.sqrt(divide).round(2)

p square_root 
