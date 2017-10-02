# Complete the solution so that the function will break up camel casing, using a space between words.
#
# Example
#
# solution('camelCasing') # => should return 'camel Casing'

# def solution(string)
#   index_camel_cased = nil
#   string.chars.each_with_index do |letter, index|
#     if letter == letter.capitalize
#       index_camel_cased = index
#     end
#   end
#   string[0..index_camel_cased - 1] + " " + string[index_camel_cased..-1]
# end

# def solution(string)
#   indexes_camel_cased = []
#   string.chars.each_with_index do |letter, index|
#     if letter == letter.capitalize
#       indexes_camel_cased << index
#     end
#   end
#   if indexes_camel_cased.length > 1
#     string[0..indexes_camel_cased[0] - 1] + " " + string[indexes_camel_cased[0]..indexes_camel_cased[1] - 1] + " " + string[indexes_camel_cased[1]..-1]
#   else
#       string[0..index_camel_cased - 1] + " " + string[index_camel_cased..-1]
#   end
#   # new_string = ""
#   # indexes_camel_cased.each do |index|
#   #   new_string << string[]
#   # end
#   # require 'pry'; binding.pry
# end

def solution(string)
  # lowers = string.scan(/[a-z]+[A-Z]/).join
  uppers = string.scan(/[A-Z][^A-Z]+/).join(' ')
  # lowers + " " + uppers
  #   require 'pry'; binding.pry

end

# p solution("camelCasing")
p solution("camelCasingTest")
p solution("CamelCasingTest")
