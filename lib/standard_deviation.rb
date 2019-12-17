ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
mean = ages.sum/ages.length.to_f

mean_diff = ages.map do |age|
            change = age -= mean.to_f
            change.round(2)
            end

squares = mean_diff.map { |mean| (mean ** 2).round(2)}

square_root = ((squares.sum / ages.length) ** (0.5)).round(2)

# When you find the standard deviation, print it out
p square_root
