class Event
  attr_reader :name, :ages, :max_age, :min_age

  def initialize(name, ages)
    @name = name
    @ages = ages
    @max_age = ages.max
    @min_age = ages.min
  end

  def average_age
    (@ages.sum.to_f / @ages.length.to_f).round(2)
  end

  def standard_deviation_age
    step3 = (@ages.sum.to_f / @ages.length.to_f)
    step4 = @ages.map { |age| (age - step3).round(2) }
    step5 = step4.map { |step4_num| (step4_num * step4_num).round(2) }
    step8 = (Math.sqrt(step5.sum / ages.length)).round(2)
  end

end
