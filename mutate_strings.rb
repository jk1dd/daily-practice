# I will give you two strings. I want you to transform stringOne into stringTwo one letter at a time.
#
# Example:
#
# stringOne = 'bubble gum';
# stringTwo = 'turtle ham';
#
# Result:
# bubble gum
# tubble gum
# turble gum
# turtle gum
# turtle hum
# turtle ham

# store (puts?) the intermediate strings

def mutate_my_strings(s1,s2)
  puts s1
  s1.chars.each_with_index do |n, i|
    s1[i] = s2[i]
    puts s1
  end
  # all
end

# def mutate_my_strings(s1,s2)
#   all = s1
#   s1.chars.each_with_index do |n, i|
#     s1[i] = s2[i]
#     # all << s1
#   end
#   # all
# end

# def mutate_my_strings(s1,s2)
#   s1.each_char {|c| c = s2}
# end

p mutate_my_strings("right wrong", "wrong right")
