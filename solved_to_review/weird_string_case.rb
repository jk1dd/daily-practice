# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.
#
# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"

# def weirdcase string
#   weird = string.chars.map.with_index do |letter, index|
#     if index.even?
#       letter.upcase
#     else
#       letter.downcase
#     end
#   end
#   weird.join
# end
#
# p weirdcase('String')
# p weirdcase('Weird string Case')

def weirdcase(string)
  words = string.split(' ')

  words.map do |word|
    word.chars.map.with_index do |letter, index|
      index.even? ? letter.upcase : letter.downcase
      # if index.even?
      #   letter.upcase
      # else
      #   letter.downcase
      # end
    end.join
  end.join(' ')

end

p weirdcase('String')
p weirdcase('Weird string Case')
