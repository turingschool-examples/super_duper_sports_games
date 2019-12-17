class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def age
    @ages
  end

  def max_age
    age.max
  end

  def min_age
    age.min
  end

  def average_age

  end

  def standard_deviation_age

  end


end
