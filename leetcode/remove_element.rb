# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  modified = nums.reject!{|n| n == val}

  return unless modified

  modified.length
end