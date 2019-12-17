ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation

#step1 

sum_ages = ages.sum

# step 2 | find the number of integers in the input array | | 5 |

count_ages = ages.size

#step 3 | divide the sum of the integers (step 1) by the number of integers (step 2). This is the average (also known as the mean).

average = sum_ages / count_ages.to_f

# step 4 | subtract each integer by the average found in step 3 | [24 - 26.6, 30 - 26.6, 18 - 26.6, 20 - 26.6, 41 - 26.6] | [-2.6, 3.4, -8.6, -6.6, 14.4]

ages_minus_mean = ages.map {|age| age - average}

# step 5 | Take the result from step 4 and square each number | [-2.6 ^ 2, 3.4 ^ 2, -8.6 ^ 2, -6.6 ^ 2, 14.4 ^ 2] | [6.76, 11.56, 73.96, 43.56, 207.36]

differences_squared = ages_minus_mean.map {|element| element**2}

# step 6 | sum all the numbers from step 5 | 6.76 + 11.56 + 73.96 + 43.56 + 207.36 | 343.2

sum_diff_squared = differences_squared.sum

# step 7 | divide the result from step 6 by the number of integers (step 2) | 343.2 / 5 | 68.64

temp = sum_diff_squared / count_ages.to_f

# step 8 | take the square root of the result from step 7 | sqrt(68.64) | 8.28

standard_deviation = Math.sqrt(temp).round(2)

# When you find the standard deviation, print it out
