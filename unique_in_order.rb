# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
#
# For example:
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]
# (unique_in_order('AAAABBBCCDAABBB') == ['A','B','C','D','A','B']

def unique_in_order(input)
  # final_letters = []
  if input.is_a?(String)
    input.chars.chunk {|c| c}.map { |e| e }.map { |c| c[0][0]}
  else
    input.chunk {|c| c}.map { |e| e }.map { |c| c[0]}
  end
  # final_letters
  # require 'pry'; binding.pry
end

p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order([1,2,2,3,3])
