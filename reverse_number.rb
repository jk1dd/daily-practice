# Given a number, write a function to output its reverse digits. (e.g. given 123 the answer is 321)
#
# Numbers should preserve their sign; i.e. a negative number should still be negative when reversed.

def reverseNumber(n)
  n.to_s[0] == '-' ? -(n.to_s.reverse.to_i) : n.to_s.reverse.to_i
  # if n.to_s[0] == '-'
  #   -(n.to_s.reverse.to_i)
  # else
  #   n.to_s.reverse.to_i
  # end
end
