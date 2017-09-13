# Count the number of Duplicates
#
# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
#
# Example
#
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (bandB)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice
require 'pry'

def duplicate_count(text)
  altered = text.downcase
  # binding.pry
  # counts = Hash.new(0)
  counts = altered.chars.reduce(Hash.new(0)){|counts, n| counts[n]+=1; counts}
  counts.keep_if { |k,v| v > 1 }.count
  # puts counts
end

p duplicate_count('aA11')

# def duplicate_count(text)
#   altered = text.downcase
#   altered.reduce(Hash.new){|counts, n| counts[n]+=1; counts}
# puts counts
#     #your code here
# end
