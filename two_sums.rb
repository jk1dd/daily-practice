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

# def two_sums(nums, target)
#   # use combination method, found on Stack Overflow. Not quite right because it will use the same number 2x
#   results = nums.combination(2).detect {|a,b| a + b == target}
#   [nums.index(results[0]), nums.index(results[1])]
# end

# p two_sums([2, 7, 11, 15], 9)
# p two_sums([2, 7, 11, 15], 18)
# p two_sums([2, 7, 11, 15], 22)

# found on leetcode
# def two_sum(nums, target)
#     search = Hash.new
#     nums.each_with_index do |item,index|
#         i = search[target-item]
#         return [i+1, index+1] if i != nil
#         search[item] = index
#     end
# end

# def two_sums(nums, target)
# 	map = {}
# 	a = nums.each.with_index {|x, j| map[target - x] = j}
#   require 'pry'; binding.pry
# 	b = nums.each.with_index {|x, j| return [map[x], j] if map[x] and j != map[x]}
# end




def two_sums(nums, target)
  # nums = [2, 7, 11, 15]
  # target = 9
  map = {} # creates empty hash to hold differences and indexes
  nums.each_with_index {|n, i| map[target - n] = i} # populates map with difference between each number and the index
  # map = {7=>0, 2=>1, -2=>2, -6=>3}
  nums.each_with_index {|n, i| return [map[n], i] if map[n] && i != map[n]} # returns the result,
  # which is map[x] - the value where the key adds to the target, which is hte index and the index that gets it there
  # also accounts for not using same index more than once
end

p two_sums([2, 7, 11, 15], 9)
p two_sums([2, 7, 11, 15], 18)
p two_sums([2, 7, 11, 15], 22)
