class Event
  attr_reader :name, :ages

  def initialize(name, ages = [])
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    (@ages.sum.to_f / @ages.length).round(1)
  end

  def standard_deviation_age
    sub_array = ages.map do |age|
      (age - average_age).round(2)
    end

    sq_array = sub_array.map do |num|
      (num * num).round(2)
    end

    sum_num = sq_array.sum do |num|
      num
    end

    second_average = sum_num / @ages.length

    sq_rt = Math.sqrt(second_average).round(2)
  end
end
