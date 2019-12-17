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
    mean = @ages.sum {|age| age} / @ages.size.to_f
    mean.round(2)
  end

  def standard_deviation_age
    total  = 0
    @ages.each do |age|
      total += (age - average_age)**2
    end
    Math.sqrt(total/(ages.size)).round(2)
  end
  
end