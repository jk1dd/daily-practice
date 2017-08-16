require 'pry'# Given an unsorted array of integers, find the smallest number in the array, the largest number in the array, and the smallest number between the two array bounds that is not in the array.
#
# For instance, given the array [-1, 4, 5, -23, 24], the smallest number is -23, the largest number is 24, and the smallest number between the array bounds is -22. You may assume the input is well-formed.
#
# You solution should return an array [smallest, minimumAbsent, largest]
#
# The smallest integer should be the integer from the array with the lowest value.
#
# The largest integer should be the integer from the array with the highest value.
#
# The minimumAbsent is the smallest number between the largest and the smallest number that is not in the array.
#
# minMinMax([-1, 4, 5, -23, 24]); //[-23, -22, 24]
# minMinMax([1, 3, -3, -2, 8, -1]); //[-3, 0, 8]
# minMinMax([2, -4, 8, -5, 9, 7]); //[-5, -3,9]

# grab smallest, put in returned array
# grab largest, put in returned array
# for min absent, take smallest and add one, check if that is in array, if it is not, return it, otherwise add one more and check again and so on

def min_min_max(array)
  final = []
  minimum = array.min
  maximum = array.max
  min_absent = 0

  # min_absent = minimum + 1 unless array.include?(minimum + 1)
  # until array.include?(min_absent) == false
  #   min_absent = minimum + 1
  # end
  (minimum+1..maximum).each do |n|
    if array.include?(n) == false
      min_absent = n
      break
    end
  end
  # binding.pry

  final << minimum
  final << min_absent
  final << maximum
  # binding.pry

end

# p min_min_max([1,2,3,4,-5])
p min_min_max([1,2,3,4,-5, -4])
