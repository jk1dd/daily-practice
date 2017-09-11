# What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:
#
# 'abba' & 'baab' == true
#
# 'abba' & 'bbaa' == true
#
# 'abba' & 'abbba' == false
# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:
#
# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']
#
# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']
#
# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

def anagrams(word, words)
  sorted_test_word = word.chars.sort.join
  sorted_words = words.map do |word|
    word.chars.sort.join
  end
  sorted_words.keep_if {|word| word == sorted_test_word}
end

# this solves it but leaves words' letters in the wrong order...

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])
p anagrams('laser', ['lazing', 'lazy',  'lacer'])
