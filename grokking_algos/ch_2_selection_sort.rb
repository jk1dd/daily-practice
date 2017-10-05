def find_smallest(list)
  smallest = list[0]
  smallest_index = 0
  list.each_with_index do |item, index|
    if list[index] < smallest
      smallest = list[index]
      smallest_index = index
    end
  end
  smallest
end

def selection_sort(array)
  sorted_array = []
  while array.length > 0
    smallest = find_smallest(array)
    sorted_array << smallest
    array.delete(smallest) # but is this the best way
  end
  # array.each do |item|
  #   smallest = find_smallest(array)
  #   sorted_array << smallest
  #   array.pop(smallest)
  # end
  sorted_array
end

# p find_smallest([4,3,2,6,77,9,1])
p selection_sort([4,3,2,6,77,9,1])
p selection_sort([2,3,1,4,5])
