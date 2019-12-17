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
end