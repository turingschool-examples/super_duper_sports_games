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
    sum = ages.sum.to_f
    length = ages.length
    average = sum / length
    average
  end

  def standard_deviation_age
    new_array = ages.map do |age|
      new = age - average_age
       new.round(2)
     end
     squared_array = new_array.map do |squared|
       square = squared ** 2
       square.round(2)
     end
     sumed = squared_array.sum
     squares = sumed / ages.length
     Math.sqrt(squares).round(2)
  end

end
