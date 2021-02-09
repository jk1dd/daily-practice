# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000

# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.

# look for exception patterns
# split by letter otherwise
# convert and add
require 'pry'
VALUES = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
}

EXCEPTIONS = {
  'IV' => 4,
  'IX' => 9,
  'XL' => 40,
  'XC' => 90,
  'CD' => 400,
  'CM' => 900
}
def roman_to_int(s)
  # characters = s.chars

  # final = characters.map { |char| VALUES[char] }.sum
end

roman_to_int('IV')

# from the internet
# def roman_to_int(s)
#   roman_dic = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
#   s_num_arr = s.chars.map { |char| roman_dic[char] }
#   s_num_arr.each_with_index do |el, index|
#     if s_num_arr[index] != 0 && index < s_num_arr.length - 1 && el < s_num_arr[index + 1]
#       s_num_arr[index] = s_num_arr[index + 1] - el
#       s_num_arr[index + 1] = 0
#     end
#   end
#   s_num_arr.inject(:+)
# end

# def roman_to_int(s)
#   total = 0
#   roman = {
#     'I': 1,
#     'V': 5,
#     'X': 10,
#     'L': 50,
#     'C': 100,
#     'D': 500,
#     'M': 1000
#   }

#   previous_char = ''
#   s.each_char do |char|
#     total += case previous_char
#              when 'I'
#                if %w[V X].include?(char)
#                  roman[char.to_sym] - 1 - 1
#                else
#                  roman[char.to_sym]
#                end
#              when 'X'
#                if %w[L C].include?(char)
#                  roman[char.to_sym] - 10 - 10
#                else
#                  roman[char.to_sym]
#                end
#              when 'C'
#                if %w[D M].include?(char)
#                  roman[char.to_sym] - 100 - 100
#                else
#                  roman[char.to_sym]
#                end
#              else
#                roman[char.to_sym]
#              end

#     previous_char = char
#   end

#   total.to_i
# end
