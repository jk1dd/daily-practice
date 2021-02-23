# Given a string s, find the length of the longest substring without repeating characters.

# Input: s = "abcabcbb"
# Output: 3
# abc

# Input: s = "bbbbb"
# Output: 1
# b

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring

# Input: s = ""
# Output: 0


def length_of_longest_substring(s)
  # find each substring and compare lengths
  # as i move through the string, have a store that keeps building until it finds a repeated character
end