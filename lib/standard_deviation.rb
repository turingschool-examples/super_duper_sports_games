ages = [24, 30, 18, 20, 41]

ages.sum

ages.sum

ages.length

average = ages.sum.to_f / ages.length.to_f

average.round(1)

subtract_age_from_average = []
 ages.each do |age|
  age -= average.round(1)
  subtract_age_from_average << age.round(1)
end
subtract_age_from_average

squares = []
subtract_age_from_average.each do |number|
  number = number ** 2
  squares << number.round(2)
end
squares

squares.sum

summed_squares_divided = squares.sum / ages.length

summed_squares_divided

p Math.sqrt(summed_squares_divided).round(2)




# When you find the standard deviation, print it out
