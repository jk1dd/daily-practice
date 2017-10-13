# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# def two_sums(nums, target) # works if numbers are adjacent
#   first_index = 0
#   second_index = 0
#   nums.each_with_index do |n, index|
#     if nums[index] + nums[index + 1] == target
#       first_index = index
#       second_index = index + 1
#       break
#     end
#   end
#   [first_index, second_index]
# end
#
# def two_sums(nums, target)
#   # take first number add it to each remaining number, keeping track of index (of first # and the one being tried)
#   first_index = 0
#   second_index = 0
#
#   # compare result to target
#   # if result not found, move to next number and compare to remaining numbers (keeping track of indexes)
# end

def two_sums(nums, target)
  # use combination method, found on Stack Overflow
  results = nums.combination(2).detect {|a,b| a + b == target}
  [nums.index(results[0]), nums.index(results[1])]
end

p two_sums([2, 7, 11, 15], 9)
p two_sums([2, 7, 11, 15], 18)
p two_sums([2, 7, 11, 15], 22)
