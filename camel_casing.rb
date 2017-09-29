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

def solution(string)
  indexes_camel_cased = []
  string.chars.each_with_index do |letter, index|
    if letter == letter.capitalize
      indexes_camel_cased << index
    end
  end
  require 'pry'; binding.pry
  new_string = ""
  indexes_camel_cased.each do |index|
    new_string << string[]
  end
end

# p solution("camelCasing")
p solution("camelCasingTest")
