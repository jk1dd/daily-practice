# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  last_split_word = s.split(' ').last

  return 0 unless last_split_word
  
  last_split_word.length
end