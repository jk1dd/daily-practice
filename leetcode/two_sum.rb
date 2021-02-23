require 'pry'
# iterate thru array
# take each number and test adding it against the remaining numbers in the array
# keep track of indexes
# test the sum against the target
# if it true, stop and spit back the indicies
# def two_sum(nums, target)
#   nums.each_with_index do |value, index|
#     nums[(index+1)..-1].each do |num|
#       if value + num == target
#         return [index, nums.index(num)]
#       end
#     end
#   end
# end
# # nums = [2,7,11,15]
# # target = 9
# nums = [3,3]
# target = 6
# answr =  two_sum(nums, target)
# binding.pry

def two_sum(nums, target)
  pairs = nums.map.with_index {|value,index| [value,index]}
  pairs.each_with_index do |pair, index|
    pairs[(index + 1)..-1].each do |pair2|
      if pair[0] + pair2[0] == target
        return [pair[1], pair2[1]]
      end
    end
  end
end
# nums = [2,7,11,15]
# target = 9
nums = [3,3]
target = 6
answr =  two_sum(nums, target)
binding.pry

# cleaner solution from internets
# def two_sum(nums, target)
#   hash = {}
#   nums.each_with_index do |number, index|
#       if hash[target - number]
#           return [hash[target - number], index]
#       else
#           hash[number] = index
#       end
#   end
# end


# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.
 
# Example 1:
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].

# Example 2:
# Input: nums = [3,2,4], target = 6
# Output: [1,2]

# Example 3:
# Input: nums = [3,3], target = 6
# Output: [0,1]

# Constraints:
#     2 <= nums.length <= 103
#     -109 <= nums[i] <= 109
#     -109 <= target <= 109
#     Only one valid answer exists.
