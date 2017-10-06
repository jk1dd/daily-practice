# # An array is called zero-balanced if its elements sum to 0 and for each positive element n, there exists another element that is the negative of n. Write a function named ìsZeroBalanced that returns true if its argument is zero-balanced array, else return false. Note that an empty array will not sum to zero.
# Test.assert_equals(is_zero_balanced([3]),false)
# Test.assert_equals(is_zero_balanced([-3]),false)
# Test.assert_equals(is_zero_balanced([0,0,0,0,0,0]),true)
# Test.assert_equals(is_zero_balanced([0,1,-1]),true)
# Test.assert_equals(is_zero_balanced([]),false)
# Test.assert_equals(is_zero_balanced([3,-2,-1]),false)
# Test.assert_equals(is_zero_balanced([0]),true)
# Test.assert_equals(is_zero_balanced([1,1,-2]),false)
# Test.assert_equals(is_zero_balanced([-1,1,-2,2,-2,-2,-4,4]),false)
# Test.assert_equals(is_zero_balanced([0,0, 0,0,0]),true)

# check to see if it sums to zero
# for each positive element, check to see that a negative one exists, else break and return false
def is_zero_balanced(array)
  return false if array.reduce(:+) != 0
  return true if array.uniq.first == 0
  positives = array.select do |n|
    n > 0
  end
  positives.each do |n|
    # array.include? (-n) ? return true : return false
    if array.include? -n
      return true
    else
      return false
    end
  end
end

p is_zero_balanced([1,-1])
p is_zero_balanced([0,0])
p is_zero_balanced([1,2,-1,-2])
p is_zero_balanced([1,2,-1,-2,3])
p is_zero_balanced([-1,1,-2,2,-2,-2,-4,4])
