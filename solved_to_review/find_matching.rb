# Create a method find that accepts a list and a block, and returns the first item for which the block returns true. If no item in the list matches, return nil.
#
# If you need help, here's a reference:
#
# http://www.rubycuts.com/enum-detect

def find list, &block
  list.find &block
end

list = [0,1,2,3,5,8,13]
p find(list){|item| item.odd?}
