class Event
  attr_reader :name, :ages

  def initialize(name, participants_ages)
    @name = name
    @ages = participants_ages
  end

  def max_age
    ages.max_by {|age| age}
  end

  def min_age
    ages.min_by {|age| age}
  end

  def average_age
    ages.sum/ages.length.to_f
  end

  def standard_deviation_age
    mean_diff = ages.map do |age|
                  change = age -= average_age.to_f
                  change.round(2)
                end
    squares = mean_diff.map { |mean| (mean ** 2).round(2)}
    ((squares.sum/ages.length.to_f) ** (0.5)).round(2)
  end
end
