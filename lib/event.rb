class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.sort.last
  end

  def min_age
    @ages.sort.first
  end

  def average_age
    @ages.sum.to_f / @ages.count
  end

  def standard_deviation_age
    avg_age = @ages.sum.to_f / @ages.count
    total_to_sum = @ages.map do |age|
      (age - avg_age)**2
    end
    Math.sqrt(total_to_sum.sum / @ages.count).round(2)
  end
end
