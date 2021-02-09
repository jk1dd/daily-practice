require 'pry'

# iterate through string
# place opens in one array
# place closeds in another
# pop off end of opens and beginning of closeds, and compare to make sure they mirror
# opens.pop == closeds.shift
# def is_valid(s)
#   opens = []
#   closeds = []

#   open_types = ['(','{','[']
#   mapping = {
#     '(' => ')',
#     '{' => '}',
#     '[' => ']'
#   }

#   s.chars.each do |char|
#     if open_types.include?(char)
#         opens << char
#     else
#       closeds << char
#     end
#   end

#   res = []
#   opens.length.times do
#     binding.pry
#     res << (closeds.shift == mapping[opens.pop])
#   end
#   # binding.pry
#   return false if res.include?(false)

#   true
# end

# step thru chars
# put open char in array
# if mirror of it is encountered, delete it
# last in first out type thing
def is_valid(s)
  return false if s.length <= 1

  open_types = ['(','{','[']
  mapping = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }
  queue = []
  s.chars.each do |char|
    if open_types.include?(char)
      queue << char
    elsif char == mapping[queue.last]
      queue.pop
    else
      return false
    end
  end

  return false if queue.length > 0

  true
end

s = "(("
# s = "{[]}"
# s = "([)]"
# s = "(]"
# s = "()[]{}"
# s = "()"

puts is_valid(s)

# internet answer:
# def is_valid(s)
#   return true if s.empty?

#   stack = []
#   s.each_char do |c|
#     case c
#     when '(', '{', '['
#       stack.push(c)
#     when ')'
#       return false if stack.pop != '('
#     when '}'
#       return false if stack.pop != '{'
#     when ']'
#       return false if stack.pop != '['
#     end
#   end
#   stack.empty?
# end
