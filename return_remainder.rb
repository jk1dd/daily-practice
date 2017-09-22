# Write a function that accepts two arguments and returns the remainder after dividing the larger number by the smaller number. Division by zero should return NaN (in C#, throw a new DivideByZeroException instead). Arguments will both be integers.

require 'pry'

def remainder(a, b)
  # your mission, should you choose to accept it...
  # binding.pry
  return nil if a == 0 || b == 0
  a > b ? a % b : b % a
end

p remainder(17,5)
p remainder(5,17)
p remainder(10,0)
p remainder(0,0)
p remainder(-10,90)
p remainder(-10,-9)
