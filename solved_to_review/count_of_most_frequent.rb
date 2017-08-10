# Write a program to find count of the most frequent item of an array.
# input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
# ouptut: 5

def most_frequent_item_count(collection)
  return 0 if collection.empty?
  counts = Hash.new(0)
  collection.each { |n| counts[n] += 1}
  counts.values.max
end
