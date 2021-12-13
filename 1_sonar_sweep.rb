# As the submarine drops below the surface of the ocean, it automatically performs a sonar sweep of the nearby sea floor. On a small screen, the sonar sweep report (your puzzle input) appears: each line is a measurement of the sea floor depth as the sweep looks further and further away from the submarine.

# For example, suppose you had the following report:

# 199
# 200
# 208
# 210
# 200
# 207
# 240
# 269
# 260
# 263

# This report indicates that, scanning outward from the submarine, the sonar sweep found depths of 199, 200, 208, 210, and so on.

# The first order of business is to figure out how quickly the depth increases, just so you know what you're dealing with - you never know if the keys will get carried into deeper water by an ocean current or a fish or something.

# To do this, count the number of times a depth measurement increases from the previous measurement. (There is no measurement before the first measurement.) In the example above, the changes are as follows:

# 199 (N/A - no previous measurement)
# 200 (increased)
# 208 (increased)
# 210 (increased)
# 200 (decreased)
# 207 (increased)
# 240 (increased)
# 269 (increased)
# 260 (decreased)
# 263 (increased)

# In this example, there are 7 measurements that are larger than the previous measurement.

# How many measurements are larger than the previous measurement?

# puzzle_input = Array.new
# f = File.open("1 Sonar Sweet - Sheet1.csv", "r")
# f.each_line { |line|
#   fields = line.split(',')
#   p = Input.new
#   p = fields[0]
#   puzzle_input.push(p)
# }

# puzzle_input = []
# f = File.open("1_Sonar_Sweep.csv")
# f.each ("1_Sonar_Sweep.csv") { |row| 
#   input = row.gsub(/\n\r/, ',')
#   puzzle_input << input
# }
# p puzzle_input

# puzzle_input = []
# f = File.open("1_Sonar_Sweep.csv")
# f.each ("1_Sonar_Sweep.csv") { |row| 
#   puzzle_input << row.to_i
# }
# p puzzle_input

# puzzle_input = input.split(/,/)

# sample_input = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263] 

# def larger_than(measurements)
#   how_many = 0
#   num = measurements[0]
#   i = 1
#   while i < measurements.length
#     if num < measurements[i]
#       how_many += 1
#     end
#     num = measurements[i]
#     i += 1
#   end
#   return how_many
# end

# p larger_than(sample_input)