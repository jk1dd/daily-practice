# Create a method that takes an array as an input, and outputs the index at which the sole odd number is located.
#
# This method should work with arrays with negative numbers. If there is no negative number in the array, then the method should output -1.
#
# Examples:
#
# oddOne([2,4,6,7,10]) # => 3
# oddOne([2,16,98,10,13,78]) # => 4
# oddOne([4,-8,98,-12,-7,90,100]) # => 4
# oddOne([2,4,6,8]) # => -1


def oddOne(arr)

  relevant_index = 0
  changed = false
  arr.each_with_index do |n, i|
    if n.odd?
      relevant_index = i
      changed = true
    end
  end
  if relevant_index == 0 && changed == false
    -1
  else
    relevant_index
  end
end

p oddOne([4,-8,98,-12,-7,90,100])
p oddOne([2,4,6,8])




# def oddOne(arr)
#   arr.each_with_index{|x,i| return i if x.odd?}
#   -1
# end
