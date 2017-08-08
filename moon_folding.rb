# Have you heard about the myth that if you fold a paper enough times, you can reach the moon with it? Sure you do, but exactly how many? Maybe it's time to write a program to figure it out.
#
# You know that a piece of paper has a thickness of 0.0001m. Given distance in units of meters, calculate how many times you have to fold the paper to make the paper reach this distance.
# (If you're not familiar with the concept of folding a paper: Each fold doubles its total thickness.)
#
# Note: Of course you can't do half a fold. You should know what this means ;P
#
# Also, if somebody is giving you a non-positive distance, it's clearly bogus and you should yell at them by returning null/NULL.

# return nil for distance <= 0
# distance/(thickness ^ 2).round

# def fold_to(distance)
#   current_thickness = 0.0001
#   fold = (current_thickness) * 2
#   fold_count = 0
#   until current_thickness == distance
#     fold_count =+ 1
#     fold
#   end
# end

# def fold_to(distance)
#   thickness = 0.0001
#   fold_count = 0
#
#   until thickness > distance
#     current_thickness = thickness * 2
#     thickness = current_thickness
#     fold_count =+ 1
#   end
#   fold_count
# end

# def fold_to(distance)
#   # distance = 0.0001 * (2 ** fold_times)
#   fold_times root of (distance/0.0001)
# end

# def fold_to(distance)
#   # distance = thickness * (2 ** number_of_folds)
#   n = 1
#   result = 0
#   until result > distance
#     result = 0.0001 * (2 ** n)
#     n =+ 1
#   end
#   n
# end
# def fold_to(distance)
#   #folds = (log (distance/thickness))/(log 2)
#   if distance < 0
#     return nil
#   elsif distance <= 0.0001
#     return 0
#   else
#     (Math.log(distance/0.0001) / Math.log(2)).ceil
#   end
# end
# puts fold_to(384000000)
# puts fold_to(0.00005)


# this is the one i was going for
def fold_to(distance)
  i = 0
  thickness = 0.0001
  if distance < 0
    return nil
  else
    while thickness <= distance do
      thickness = thickness * 2
      i += 1
      break if thickness >= distance
    end
    i
  end
end
