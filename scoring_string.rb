# Given a string of words (x), you need to find the highest scoring word.
#
# Each letter of a word scores points according to it's position in the alphabet. a=1, z=26 and everything inbetween.
#
# You need to return the highest scoring word as a string.
#
# If two words score the same, return the word that appears earliest in the original string.
#
# All letters will be lower case and all inputs will be valid.

# split the words at spaces, into array
# score each word in array (map perhaps)
# to score the word, replace each letter and reduce the total - this would need hash of scores
# return highest scoring word
require 'pry'
def high(x)
  letter_scores = {
      "a": 1,
      "b": 2,
      "c": 3,
      "d": 4,
      "e": 5,
      "f": 6,
      "g": 7,
      "h": 8,
      "i": 9,
      "j": 10,
      "k": 11,
      "l": 12,
      "m": 13,
      "n": 14,
      "o": 15,
      "p": 16,
      "q": 17,
      "r": 18,
      "s": 19,
      "t": 20,
      "u": 21,
      "v": 22,
      "w": 23,
      "x": 24,
      "y": 25,
      "z": 26
    }
  words = x.downcase.split
  scored_words = words.map do |word|
    word.chars.map do |letter|
      # binding.pry
      letter_scores[letter.to_sym]
    end.reduce(:+)
  end
  binding.pry
  highest_word_index = scored_words.each_with_index.max[1]
  words[highest_word_index]
end

# p high('man I need a taxi up to ubud')
# should be taxi
# p high('uxpbnc tjcjq byhqvztyex jgo tgxztdp pulqwx snftwjrxu gjrkr ojenyovdzem eomjvra wa hbzcad rgoahvnpy trkzibfxvlh nloxosoxzyf kjaf yfjpp lqg kqetvwfed fpa xuxgaje hq ndu')
# 'nloxosoxzyf'
# Expected: "vwqwblyznq", instead got: "azwttzcoiqu"
p high('vwqwblyznq azwttzcoiqu')
