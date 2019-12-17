# ages = [24, 30, 18, 20, 41]

module StandardDeviation
  def standard_deviation_age(numbers)

    average_num = numbers.sum.to_f.round(2) / numbers.length

    numbers_less_average = numbers.map { |num| num - average_num}

    squared_nums = numbers_less_average.map { |num| num * num }

    average_after_squared = squared_nums.sum / numbers.length

    Math.sqrt(average_after_squared).round(2)
  end
end

# p standard_deviation(ages)
