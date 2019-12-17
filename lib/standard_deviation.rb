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

#step5
step_5_start = step_4.map {|number| number ** 2}
step_5 = step_5_start.map {|number| number.round(2)}

#step6
step_6_start = 0
 step_5.each {|age|step_6_start += age}
step_6 = step_6_start.round(2)

#step7
step_7 = step_6 / step_2_count

#step8
std_var = Math.sqrt(step_7).round(2)
puts std_var
require "pry"; binding.pry
