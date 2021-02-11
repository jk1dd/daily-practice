require 'pry'
def remove_duplicates(nums)
  modified = nums.uniq!
  return unless modified

  modified.length
end

# nums = []
# nums = [1]
nums = [1,2]

ans = remove_duplicates(nums)
binding.pry
''