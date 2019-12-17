class StandardDev

  def initialize(input)
    @input = []
  end

  def standard_dev(input)
    average_input = (input.sum.to_f / input.length.to_f).round(2)
    ab_value_diff_from_ave = input.map do |input|
    (average_input - input).abs
    end
    squared_difference_from_average = ab_value_diff_from_ave.map do |num|
      num ** (2)
    end
    ave_diff_squared = squared_difference_from_average.sum / squared_difference_from_average.length
    st_dev = Math.sqrt(ave_diff_squared).round(2)
  end

end
