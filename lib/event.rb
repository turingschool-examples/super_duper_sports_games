require 'pry'

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
    (@ages.sum.to_f/@ages.length)
  end

  def standard_deviation
    holder1 = []
    holder2 =[]
    average = (@ages.sum.to_f / @ages.length)
      ages.each do |age|
        holder1 << (age - average).round(1)
      end
      holder1.each do |num|
        holder2 << (num * num)
      end
    # binding.pry
    standard_deviation = Math.sqrt(holder2.sum/@ages.length).round(2)
    p standard_deviation
  end
end
