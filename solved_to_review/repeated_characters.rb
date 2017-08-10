require 'pry'
# given string of random characters
# find the index of the first character of the longest, continuous block of repeating characters
# eg for "abcdddefg", it should return 3

# iterate through string
# find longest repeating continuous block of characters
# return index of the first character of that block

# keeping track of current index, index of character when followed by same character (longest index)
# count of continuous character blocks?

# def finder(string)
#   characters = string.chars
#
#   characters.each_with_index do |character, index|
#     if characters[index] == characters[index + 1]
#       longest_string = index
#   end
# end

# def finder(string)
#   repeated_char = Hash.new
#   string.each_char do |char|
#     repeated_char[string.index(char)] += 1
#     binding.pry
#   end
#   repeated_char
# end
#
# finder('abcdddefg')

# def finder(string)
#   repeateds = string.chars.chunk{|char| char}.map { |chunk| chunk[1].join if chunk[1].size > 1 }.compact
#   longest = repeateds.max_by(&:length)
#   index_of_beginning = string.index(longest[0])
# end
#
# puts finder('abcdddefg')
# puts finder('abcdddefg')

# def finder(string)
#   characters = string.chars
#   start = 0
#   potential_start = 0
#   count = 1
#   max_count = 1
#   i = 1
#
#   while i < (string.length - 1)
#   # (string.length-1).times do
#     if string[i] == string[i-1]
#       count =+ 1
#       if count > max_count
#         max_count = count
#         start = potential_start
#       end
#       i += 1
#     else
#       potential_start = i
#       count = 1
#       i += 1
#     end
#     start
#   end
#
# end
#
# puts finder('abcdddefg')
