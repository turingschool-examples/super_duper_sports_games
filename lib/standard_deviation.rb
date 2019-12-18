ages = [24, 30, 18, 20, 41]

ages.sum

ages.length
ave_subtracted = []
squared = []

average = ages.sum / ages.length.to_f

ages.each do |age|
  ave_subtracted << (age - average).round(1)
end

ave_subtracted.each do |ave|
  squared << (ave ** 2).round(2)
end


mega = squared.sum / ages.length.to_f

stdev = Math.sqrt(mega)

@stdev = stdev.round(2)
