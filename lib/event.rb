class Event
  attr_reader :name, :age

  def initialize (name, age)
    @name = name
    @age = age
  end

  def max_age
     @age.max
  end


  def min_age
     @age.min
  end


  def average_age
  average = @age.sum / @age.count.to_f
  # require "pry"; binding.pry
   average
  end

  def standard_deviation_age
    
  end

end
  # require "pry"; binding.pry
  # def standard_deviation_age
  # end
