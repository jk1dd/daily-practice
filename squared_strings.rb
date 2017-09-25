# This kata is the first of a sequence of four about "Squared Strings".
#
# You are given a string of n lines, each substring being n characters long: For example:
#
# s = "abcd\nefgh\nijkl\nmnop"
#
# We will study some transformations of this square of strings.
#
# Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
# vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
# Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
# hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
#Task:

# Write these two functions
# and
#
# high-order function oper(fct, s) where
#
# fct is the function of one variable f to apply to the string s (fct will be one of vertMirror, horMirror)
# #Examples:
#
# s = "abcd\nefgh\nijkl\nmnop"
# oper(vert_mirror, s) => "dcba\nhgfe\nlkji\nponm"
# oper(hor_mirror, s) => "mnop\nijkl\nefgh\nabcd"

def vert_mirror(strng)
    string.split("\n").map do |piece|
      piece.reverse
    end.join("/n")
end
def hor_mirror(strng)
    strng.split("\n").reverse.join("\n")
end
def oper(fct, s)
    fct(s)
end
