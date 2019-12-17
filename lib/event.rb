require './lib/standard_deviation'

class Event

  attr_reader :name, :participants

  def initialize(name, participants)
    @name = name
    @participants = participants
  end

  def max_age
    @participants.max_by do |participant|
      participant
    end
  end

  def min_age
    @participants.min_by do |participant|
      participant
    end
  end

  def average_age
    sum = 0
    total = 0
    @participants.each do |participant|
      sum += participant
      total += 1
    end
    sum/total.to_f
  end

  def standard_deviation_age
    standard_deviation = StandardDeviation.new(@participants)
    standard_deviation.find_standard_deviation
  end
end
