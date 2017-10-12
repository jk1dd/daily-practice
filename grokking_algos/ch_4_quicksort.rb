# def sum(list)
#   if list == []
#     0
#   else
#     # list.shift + sum(list)
#     list[0]+ sum(list[1..-1]) # both ways work, range was needed
#   end
#
# end
#
# p sum([1,2,3])

# def count(list)
#   if list == []
#     0
#   else
#     1 + count(list[1..-1])
#   end
# end
#
# p count([1,2,3])

# def max(list) # did not work...
#   if list.length == 2
#     if list[0] > list[1]
#       list[0]
#     else
#       list[1]
#     end
#   end
#   sub_max = max(list[1..-1])
#   if list[0] > sub_max
#     list[0]
#   else
#     sub_max
#   end
#
# end
#
# p max([2,3,1])

def quicksort(array)
  if array.length < 2
    return array
  else
    pivot = array[0]
    less = [i for i in array[1..-1] if i <= pivot]
    greater = [i for i in array[1..-1] if i > pivot]
  end
  return quicksort(less) + [pivot] + quicksort(greater)
end

p quicksort([2,2,1,99])
