# Find the 2nd largest integer in array If the array has no 2nd largest integer then return nil. Reject all non integers elements and then find the 2nd largest integer in array
#
# find_2nd_largest([1,2,3]) => 2
#
# find_2nd_largest([1,1,1,1,1]) => nil because all elements are same. Largest no. is 1. and there is no 2nd largest no.
#
# find_2nd_largest([1,'a','2',3,3,4,5,'b']) => 4 as after rejecting non integers array will be [1,3,3,4,5] Largest no. is 5. and 2nd largest is 4.
#
# Return nil if there is no 2nd largest integer. Take care of big numbers as well

# def find_2nd_largest(arr)
#   cleaned_numbers = arr.select {|item| item.kind_of? Fixnum}.sort
#   cleaned_numbers[-2] == cleaned_numbers[-1] ? nil : cleaned_numbers[-2]
# end

def find_2nd_largest(arr)
  if arr.count == 1
    return arr.last
  else
    # cleaned_numbers = arr.select {|item| item.kind_of? Fixnum || Bignum}.sort
    cleaned_numbers = arr.select {|item| item.kind_of? Integer}.sort
    cleaned_numbers.max == cleaned_numbers[-2] ? nil : cleaned_numbers[-2]
  end
end

p find_2nd_largest([1,2,3])
p find_2nd_largest([1,1,1,1,1])
p find_2nd_largest([1,'a','2',3,3,4,5,'b'])
p find_2nd_largest([3333333333333333333334])
