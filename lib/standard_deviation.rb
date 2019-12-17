ages = [24, 30, 18, 20, 41]

sum = ages.sum.to_f

count = ages.count.to_f

average = ages.sum.to_f / ages.count.to_f

subtracted = ages.map do |age|
              age.to_f - average.to_f
            end

squared = subtracted.map do |subtract|
            subtract ** 2
          end

square_sum = squared.sum

divided = square_sum / count

p Math.sqrt(divided)
