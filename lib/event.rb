  require 'pry'
  require './lib/standard_dev'

class Event
  attr_reader :name, :ages
  attr_accessor :st_dev
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age(ages)
    ages.max
  end

  def min_age(ages)
    ages.min
  end

  def average_age(ages)
    (ages.sum.to_f / ages.length.to_f).round(2)
  end

  def standard_deviation_age(ages)
    @st_dev = StandardDev.new(ages = [24, 30, 18, 20, 41])
    @st_dev.standard_dev(ages)
  end
end
