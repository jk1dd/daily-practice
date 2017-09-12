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

  anagram_locations = sorted_words.map.with_index do |word, index|
    if word == sorted_test_word
      index
    end
  end.compact
  # sorted_words.keep_if.with_index {|word, index| word == sorted_test_word}
  anagrams = []
  anagram_locations.each do |location|
    anagrams << words[location]
  end
  anagrams
end


p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])
p anagrams('laser', ['lazing', 'lazy',  'lacer'])


# def anagrams(word, words)
#   sorted_chars = word.chars.sort
#   words.select { |word| word.chars.sort == sorted_chars }
# end

much simpler
