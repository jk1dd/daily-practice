def is_palindrome(x)
  return true if x.to_s == x.to_s.reverse
  false
end