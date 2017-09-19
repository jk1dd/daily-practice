# In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater or equal to p = 1200 inhabitants?
#
# At the end of the first year there will be:
# 1000 + 1000 * 0.02 + 50 => 1070 inhabitants
#
# At the end of the 2nd year there will be:
# 1070 + 1070 * 0.02 + 50 => 1141 inhabitants (number of inhabitants is an integer)
#
# At the end of the 3rd year there will be:
# 1141 + 1141 * 0.02 + 50 => 1213
#
# It will need 3 entire years.
# More generally given parameters:
#
# p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)
#
# the function nb_year should return n number of entire years needed to get a population greater or equal to p.
#
# aug is an integer (> 0), percent a positive or null floating number, p0 and p are positive integers (> 0)
#
# Examples:
# nb_year(1500, 5, 100, 5000) -> 15
# nb_year(1500000, 2.5, 10000, 2000000) -> 10
# Note: Don't forget to convert the percent parameter as a percentage in the body of your function: if the parameter percent is 2 you have to convert it to 0.02.

# keep count of years
# until the population is greater than or equal to the final looked for,
# increase pop by the percent and aug
# increment year

require 'pry'

# def nb_year(p0, percent, aug, p)
#   year_count = 0
#   while p0 <= p do
#     p0 = p0 + (p0 * (percent/100).to_f) + aug
#     year_count =+ 1
#     # binding.pry
#   end
#   year_count
# end

# def nb_year(p0, percent, aug, p)
#   year_count = 0
#   new_pop = p0
#   until new_pop >= p do
#     new_pop += (new_pop * (percent/100.to_f)) + aug
#     year_count += 1
#     # binding.pry
#   end
#   year_count
#   # binding.pry
# end

def nb_year(p0, percent, aug, p)
  year_count = 0
  until p0 >= p do
    p0 += (p0 * (percent/100.to_f)) + aug
    year_count += 1
    # binding.pry
  end
  year_count
  # binding.pry
end

# def nb_year(p0, percent, aug, p)
#   # t = (log(p/p0))/percent
#   percent_decimal = percent/100.to_f
#   # binding.pry
#   time = Math.log(p/p0)/percent_decimal
# end

# def nb_year(p0, percent, aug, p)
#   # t = (log(p/p0))/percent
#   percent_decimal = percent/100.to_f
#   # binding.pry
#   time = Math.log(p/p0)/(Math.log(1 + percent_decimal))
# end

p nb_year(1500, 5, 100, 5000)
