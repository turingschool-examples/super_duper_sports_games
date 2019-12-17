ages = [24, 30, 18, 20, 41]

#step1
step_1_sum = 0
step_1 = ages.each {|age|step_1_sum += age.to_f}

#step2
step_2_count = ages.count.to_f

#step3
step_3_average = (step_1_sum.to_f / step_2_count.to_f)

#step4
step_4_start = ages.map {|age| age - step_3_average}
step_4 = step_4_start.map {|number| number.round(2)}
require "pry"; binding.pry

#step5
