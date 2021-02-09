# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:
# Input: strs = ["flower","flow","flight"]
# Output: "fl"

# Example 2:
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
require 'pry'
# break each element into chars
# compare each vertically - or zip?
# kick back "" if first doesn't match
# otherwise keep going (build separate array) until match not found
def longest_common_prefix(strs)
  return '' if strs.empty?

  char_separated = strs.map do |string|
    string.chars
  end

  zipped = char_separated[0].zip(*char_separated[1..-1])
  final_letters = []

  zipped.each do |letter_array|
    if letter_array.uniq.length == 1
      final_letters << letter_array.uniq
    else
      break
    end
  end

  final_letters.join
end

# # puts longest_common_prefix(["flower","flow","flight"])
# puts longest_common_prefix(["dog","racecar","car"])
# puts longest_common_prefix(["cir","car"])

# internet answers:
# def longest_common_prefix(strs)
#   return "" if strs.length == 0
#   prefix = strs.pop

#   strs.each do |s|
#     while prefix != s.slice(0...prefix.length)
#       prefix = prefix.slice(0...prefix.length-1)
#       return prefix if prefix == ""
#     end
#   end
#   prefix
# end

# var longestCommonPrefix = function(strs) {
#   if (strs.length === 0) return "";
#   let str = strs[0];
#   for (let i = 1; i < strs.length; i++) {
#       while (strs[i].indexOf(str) !== 0) {
#           str = str.substring(0, str.length - 1);
#       }
#   }
#   return str;
# };