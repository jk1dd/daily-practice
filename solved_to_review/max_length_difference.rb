# You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. Let x be any string in the first array and y be any string in the second array.
#
# Find max(abs(length(x) − length(y)))
#
# If a1 or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).
#
# #Example:
#
# s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
# s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
# mxdiflg(s1, s2) --> 13

# if either array is empty, return -1
# find shortest and longest in array 1
# find shortest and longest in array 2
# subtrackt shortest from longest for each case
# get abs of each result, return largest

def mxdiflg(a1, a2)
	if a1 == [] || a2 == []
    return -1
  end

  a1_shortest = a1.min_by {|word| word.length}.length
  a1_longest = a1.max_by {|word| word.length}.length

  a2_shortest = a2.min_by {|word| word.length}.length
  a2_longest = a2.max_by {|word| word.length}.length

  differences = [(a1_shortest-a2_longest).abs, (a2_shortest-a1_longest).abs]
  differences.max
end

s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
puts mxdiflg(s1, s2)
