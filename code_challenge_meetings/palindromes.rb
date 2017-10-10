# first 25 #s that add to their reverse and create a palindrome (over 1000)

# add numbers to reverse of self
# test result for palindrome-ness
# if result is palindrome AND greater than 1000
# store number in array
# stop looping through numbers once result array has 25 or more numbers

# def palindrome
#   results = []
#   number = 10 # prob don't need to start here?
#   # optimization - how long you spend trying to find optimal start point - numbers might just crunch faster
#   while results.length < 25
#     added_result = number + (number.to_s.reverse).to_i
#     if (added_result == (added_result.to_s.reverse).to_i) && added_result >= 1000 # this order should be reversed, check over 1000 first
#       results << number
#       number += 1
#     else
#       number += 1
#     end
#   end
#   results
# end
#
# p palindrome

# add number to reverse of number
# add result to reverse of result, check new result for palindrome-ness
# repeat this up to < 5 steps
# if at any point (after the second) the result is a palindrome, add the number to the results array.
# limit length of results array to 25

# separate function for reverseing number could be reused

def number_reverser(number)
  result = 0
  while number != 0
    digit = number % 10
    result = (result * 10) + digit
    number = number / 10
  end
  result
end

def palindrome
  results = []
  num = 0
  while results.length < 25

    # sum not num, overwriting
    sum = num + number_reverser(num) # since we don't need the first iteration, move right to that result
    # if sum is palindrome don't do following 4 loops
    if sum != number_reverser(sum)
      4.times do
        sum = sum + number_reverser(sum) # reassign sum as the thing to check for palindrome
        if sum == number_reverser(sum)
          results << num && break
        end
      end
    end
    num += 1 # increment num by 1 to check the next number in sequence

  end
  results
end

# [5, 6, 7, 8, 9, 19, 28, 37, 39, 46, 48, 49, 55, 57, 58, 59, 64, 66, 67, 68, 69, 73, 75, 76, 77]

# p number_reverser(123)
p palindrome
