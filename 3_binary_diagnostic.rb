# The submarine has been making some odd creaking noises, so you ask it to produce a diagnostic report just in case.

# The diagnostic report (your puzzle input) consists of a list of binary numbers which, when decoded properly, can tell you many useful things about the conditions of the submarine. The first parameter to check is the power consumption.

# You need to use the binary numbers in the diagnostic report to generate two new binary numbers (called the gamma rate and the epsilon rate). The power consumption can then be found by multiplying the gamma rate by the epsilon rate.

# Each bit in the gamma rate can be determined by finding the most common bit in the corresponding position of all numbers in the diagnostic report. For example, given the following diagnostic report:

# 00100
# 11110
# 10110
# 10111
# 10101
# 01111
# 00111
# 11100
# 10000
# 11001
# 00010
# 01010

# Considering only the first bit of each number, there are five 0 bits and seven 1 bits. Since the most common bit is 1, the first bit of the gamma rate is 1.

# The most common second bit of the numbers in the diagnostic report is 0, so the second bit of the gamma rate is 0.

# The most common value of the third, fourth, and fifth bits are 1, 1, and 0, respectively, and so the final three bits of the gamma rate are 110.

# So, the gamma rate is the binary number 10110, or 22 in decimal.

# The epsilon rate is calculated in a similar way; rather than use the most common bit, the least common bit from each position is used. So, the epsilon rate is 01001, or 9 in decimal. Multiplying the gamma rate (22) by the epsilon rate (9) produces the power consumption, 198.


# 00100   
# 11110
# 10110
# 10111
# 10101
# 01111
# 00111
# 11100
# 10000
# 11001
# 00010
# 01010

# i = 0, i += 1 / i2 = 0 constant
# 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0
# 7 x 1 > 5 x 0
# gamma = [1]

# i = 0, i += 1 / i2 = 1 constant
# 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1
# 7 x 0 > 5 x 1
# gamma = [10]

# i = 0, i += 1 / i2 = 2 constant
# 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0
# 8 x 1 > 4 x 0
# gamma = [101]

# i = 0, i += 1 / i2 = 3 constant
# 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1
# 7 x 1 > 5 x 0
# gamma = [1011]

# i = 0, i += 1 / i2 = 4 constant
# 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0
# 7 x 0 > 5 x 1
# gamma = [10110]

sample_input = "00100, 11110, 10110, 10111, 10101, 01111, 00111, 11100, 10000, 11001, 00010, 01010"

bits = sample_input.split

def gamma(input)
  a0 = 0
  a1 = 0
  gamma = []
  i = 0
  while i < input.length
    if input[i][0].to_i == 0
      a0 += 1
    elsif
      a1 += 1
    end
    i += 1
  end
  if a0 > a1
    gamma << 0
  else
    gamma << 1
  end
  j = 0
  b0 = 0
  b1 = 0
  while j < input.length
    if input[j][1].to_i == 0
      b0 += 1
    elsif
      b1 += 1
    end
    j += 1
  end
  if b0 > b1
    gamma << 0
  else
    gamma << 1
  end
  k = 0
  c0 = 0
  c1 = 0
  while k < input.length
    if input[k][2].to_i == 0
      c0 += 1
    elsif
      c1 += 1
    end
    k += 1
  end
  if c0 > c1
    gamma << 0
  else
    gamma << 1
  end
  l = 0
  d0 = 0
  d1 = 0
  while l < input.length
    if input[l][3].to_i == 0
      d0 += 1
    elsif
      d1 += 1
    end
    l += 1
  end
  if d0 > d1
    gamma << 0
  else
    gamma << 1
  end
  m = 0
  e0 = 0
  e1 = 0
  while m < input.length
    if input[m][4].to_i == 0
      e0 += 1
    elsif
      e1 += 1
    end
    m += 1
  end
  if e0 > e1
    gamma << 0
  else
    gamma << 1
  end
  p gamma
end

gamma(bits)

def epsilon(input)
  a0 = 0
  a1 = 0
  epsilon = []
  i = 0
  while i < input.length
    if input[i][0].to_i == 0
      a0 += 1
    elsif
      a1 += 1
    end
    i += 1
  end
  if a0 < a1
    epsilon << 0
  else
    epsilon << 1
  end
  j = 0
  b0 = 0
  b1 = 0
  while j < input.length
    if input[j][1].to_i == 0
      b0 += 1
    elsif
      b1 += 1
    end
    j += 1
  end
  if b0 < b1
    epsilon << 0
  else
    epsilon << 1
  end
  k = 0
  c0 = 0
  c1 = 0
  while k < input.length
    if input[k][2].to_i == 0
      c0 += 1
    elsif
      c1 += 1
    end
    k += 1
  end
  if c0 < c1
    epsilon << 0
  else
    epsilon << 1
  end
  l = 0
  d0 = 0
  d1 = 0
  while l < input.length
    if input[l][3].to_i == 0
      d0 += 1
    elsif
      d1 += 1
    end
    l += 1
  end
  if d0 < d1
    epsilon << 0
  else
    epsilon << 1
  end
  m = 0
  e0 = 0
  e1 = 0
  while m < input.length
    if input[m][4].to_i == 0
      e0 += 1
    elsif
      e1 += 1
    end
    m += 1
  end
  if e0 < e1
    epsilon << 0
  else
    epsilon << 1
  end
  p epsilon
end

epsilon(bits)

# Use the binary numbers in your diagnostic report to calculate the gamma rate and epsilon rate, then multiply them together. What is the power consumption of the submarine? (Be sure to represent your answer in decimal, not binary.)