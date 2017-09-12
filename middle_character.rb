# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

def get_middle(s)
  s.length.odd? ? s[s.length/2] : s[s.length/2 - 1] + s[s.length/2]
  # length = s.length
  # if length.odd?
  #   s[length/2]
  # else
  #   s[length/2 - 1] + s[length/2]
  # end
end

p get_middle('duck')
p get_middle('the')
p get_middle('ducks')
p get_middle('chair')
p get_middle('hair')
