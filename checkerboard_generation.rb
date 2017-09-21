# Checkerboard
#
# Write a method checkerboard/Checkerboard which takes an integer size and returns a checkerboard of dimensions size x size. There are two colored squares on the checkerboard. Red squares are represented by the string [r] and black squares are represented by the string [b]. You MUST use the newline character \n to insert a newline at the end of each row.
#
# The top left corner should be a red square.
# Each row should have alternating squares in the row.
# The starting square on each row should also alternate.
# Assumptions
#
# You can assume you are given an integer size.
# You cannot assume positive values.
# Thus you should return an empty string for negative sizes and a size of 0. (An empty string does not have a newline ending).
# You should assume the newline character used is \n.
# You MUST leave a newline character at the end of the full checkerboard thus allowing the board to be on its own if you were to run in a terminal.
# Examples
#
# puts checkerboard(5);
# [r][b][r][b][r]
# [b][r][b][r][b]
# [r][b][r][b][r]
# [b][r][b][r][b]
# [r][b][r][b][r]

# build the first line
# put it into checkerboard string
# build the second, put it in

require 'pry'

# def checkerboard(size)
#   return "" if size <= 0
#   completed_board = ""
#
#   first_line = size.times do |n|
#     if n.odd?
#       completed_board << "[r]"
#     else
#       completed_board << "[b]"
#     end
#   end
#
#   # binding.pry
# end

def checkerboard(size)
  return "" if size <= 0
  completed_board = ""

  first_line = size.times do |n|
    if n.odd?
      completed_board << "[r]"
    else
      completed_board << "[b]"
    end
  end

  # binding.pry
end

p checkerboard(5)
