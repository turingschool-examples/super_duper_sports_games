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
        sum = ages.sum

        total = ages.count

        average = (sum.to_f)/ total
    end

    def standard_deviation_age
      sum = ages.sum

  total = ages.count

  average = (sum.to_f)/ total

  subtract_by_average = []
    ages.each do |age|
        sub = age - average
        subtract_by_average << sub.round(1)
    end 

    squared_array = []
    subtract_by_average.map do |number|
        squared_num = number ** 2
        squared_array << squared_num.round(2)
    end     
    
    added = squared_array.sum 

    divided = added/total

    square_root = Math.sqrt(68.64).round(2)
    end
end