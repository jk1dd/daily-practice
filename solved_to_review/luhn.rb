require 'pry'# n this Kata, you will implement The Luhn Algorithm, which is used to help validate credit card numbers.
#
# Given a positive integer of up to 16 digits, return true if it is a valid credit card number, and false if it is not.
#
# Here is the algorithm:
#
# If there are an even number of digits, double every other digit starting with the first, and if there are an odd number of digits, double every other digit starting with the second. Another way to think about it is, from the right to left, double every other digit starting with the second to last digit.
#
# 1714 => [1*, 7, 1*, 4] => [2, 7, 2, 4]
#
# 12345 => [1, 2*, 3, 4*, 5] => [1, 4, 3, 8, 5]
#
# 891 => [8, 9*, 1] => [8, 18, 1]
# If a resulting doubled number is greater than 9, replace it with either the sum of it's own digits, or 9 subtracted from it.
#
# [8, 18*, 1] => [8, (1+8), 1] => [8, 9, 1]
#
# (or)
#
# [8, 18*, 1] => [8, (18-9), 1] => [8, 9, 1]
# Sum all of the final digits
#
#  [8, 9, 1] => 8+9+1 => 18
# Finally, take that sum and divide it by 10. If the remainder equals zero, the original credit card number is valid.
#
#  18 (modulus) 10 => 8.
#
#  8 does not equal 0, so 891 is not a valid credit card numbe

def validate(n)
  # reverse the number
  reversed = reverser(n)
  cleaned = cleaner(reversed)
  checker(cleaned)
  # reversed_number_string = n.to_s.reverse.chars
  # double every other number
  # doubler(reversed_number_string)
  # doubled = reversed_number_string.map.with_index do |number, index|
  #   if index % 2 != 0
  #     number.to_i * 2
  #   else
  #     number.to_i
  #   end
  # end
  # check to see if each number is > 10
  # cleaned = doubler(reversed).map do |number|
  #   if number / 10 >= 1
  #     number - 9
  #   else
  #     number
  #   end
  # end
  # # binding.pry
  #   # if so, subtract 9
  #   # if not, leave as is
  # # sum the numbers (reduce), check to see if divisbile by 10, return boolean
  # cleaned.reduce(:+) % 10 == 0
end

def cleaner(reversed_string)
  doubler(reversed_string).map do |number|
    number / 10 >= 1 ? (number-9) : number
  end
end

def checker(cleaned_numbers)
  cleaned_numbers.reduce(:+) % 10 == 0
end

def reverser(numbers)
  numbers.to_s.reverse.chars
end

def doubler(number_string)
  number_string.map.with_index do |number, index|
    index % 2 != 0 ? number.to_i * 2 : number.to_i
    # if index % 2 != 0
    #   number.to_i * 2
    # else
    #   number.to_i
    # end
  end
end

p validate(1234567890123456)
p validate(29304823012893109)
p validate(29304823012893304)
