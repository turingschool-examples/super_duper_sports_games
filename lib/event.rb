class Event
  attr_reader :name, :ages
  
  def initialize(name, ages)
    @name = name
    @ages = ages
  end
  
  def get_name
    @name
  end
  
  def get_ages
    @ages
  end
  
  def max_age
    @ages.max
  end
  
  def min_age
    @ages.min
  end
  
  def average_age
    (@ages.sum / @ages.count.to_f).round(2)
  end
  
  def standard_deviation_age
    subtract_mean = @ages.map {|age| (age - average_age).round(2)}
    
    squared = subtract_mean.map {|num| (num ** 2).round(2)}

    sum = squared.reduce(:+).round(2)

    mean2 = sum / ages.count

    Math.sqrt(mean2).round(2)
  end
end