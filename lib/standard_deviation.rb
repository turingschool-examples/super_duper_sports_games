class StandardDeviation
   attr_reader :standard_deviation

   def initialize(data)
      @data = data
      @standard_deviation = square_rooted_data
   end

   def summed_data
      @data.sum
   end

   def calculate_average
      summed_data/@data.length.to_f
   end

   def subtract_each_integer_by_average
      @data.map do |integer|
         subtracted_integer = integer - calculate_average.to_f
         subtracted_integer.round(2)
      end
   end

   def squared_subtracted_data
      subtract_each_integer_by_average.map do |integer|
         squared_integer = integer ** 2
         squared_integer.round(2)
      end
   end

   def divide_summed_integers
      squared_subtracted_data.sum / @data.length
   end

   def square_rooted_data
      Math.sqrt(divide_summed_integers).round(2)
   end
end
