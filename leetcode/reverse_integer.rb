# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
require 'pry'
def reverse(x)
  reversed_number = x.to_s.reverse.to_i
  return 0 if reversed_number.bit_length >= 32

  negative_incoming = true if x < 0
  negative_incoming ? -reversed_number : reversed_number
end

# online solution:
def reverse(x)
  if x.negative?
    x = (x.to_s.reverse.to_i * -1)
  else
    x = x.to_s.reverse.to_i
  end

  x.bit_length > 31 ? 0 : x
end