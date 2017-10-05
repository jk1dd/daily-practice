def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = list[mid]
    if guess == item
      return mid
    elsif guess < item
      low = mid + 1
    elsif guess > item
      high = mid - 1
    end


  end
end

p binary_search([1,2,3,4,5], 4)
