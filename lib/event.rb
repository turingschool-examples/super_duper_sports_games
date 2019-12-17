class Event
  attr_reader :name, :ages

  def initialize(name, ages)
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
    @ages.sum.to_f / 5
  end

  def standard_deviation_age
    deviation = Deviation.new(@ages)
    deviation.square_root
  end
end
