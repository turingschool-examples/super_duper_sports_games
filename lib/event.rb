class Event

	attr_reader :name, :ages

	def initialize(name, ages)
		@name = name
		@ages = ages
	end

	def max_age
		ages.max
	end

	def min_age
		ages.min
	end

	def average_age
		ages.reduce(:+).to_f / ages.count.to_f
	end

	def standard_deviation_age
		ages_differenciation = ages.map { |age| age - average_age.to_f}
		squared_differenciation = ages_differenciation.map { |age| age **2}
		sum_of_squared_differenciation = squared_differenciation.sum
		squared_standard_deviation = sum_of_squared_differenciation / ages.size
		standard_deviation = Math.sqrt(squared_standard_deviation.to_f)
		standard_deviation.round(2)
	end
	
end
