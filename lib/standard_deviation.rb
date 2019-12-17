ages = [24, 30, 18, 20, 41]

    
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
        
  puts sum 
  p total
  p average
  p subtract_by_average
  p squared_array
  p added
  p divided
  p square_root
    # Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
