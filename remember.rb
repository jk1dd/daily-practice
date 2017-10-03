# Write a function that takes a string and returns an array of the repeated characters (letters, numbers, whitespace) in the string.
#
# If a charater is repeated more than once, only show it once in the result array.
#
# Characters should be shown by the order of their first repetition. Note that this may be different from the order of first appearance of the character.
#
# Characters are case sensitive.
#
# Examples:
#
# remember("apple") => returns ["p"]
# remember("apPle") => returns []          # no repeats, "p" != "P"
# remember("pippi") => returns ["p","i"]   # show "p" only once
# remember('Pippi') => returns ["p","i"]   # "p" is repeated first

# split word into characters
# reduce word to uniq version
# compare with actual to build final array of repeaters (delete non-uniqs?)
# call uniq on final array of repeaters

# def remember(phrase)
#   # repeaters = []
#   squished_phrase = phrase.chars.uniq.join
#   phrase.delete(squished_phrase).chars.uniq
#   require 'pry'; binding.pry
#   # phrase.chars.each do |char|
#   #
#   # end
# end

def remember(phrase)
  phrase.chars.select { |e| phrase.count(e) > 1}.uniq
end

p remember("apple")
# => returns ["p"]
p remember("apPle")
# => returns []          # no repeats, "p" != "P"
p remember("pippi")
# => returns ["p","i"]   # show "p" only once
p remember('Pippi')
# => returns ["p","i"]   # "p" is repeated first
