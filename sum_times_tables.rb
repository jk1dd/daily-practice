# Write a function sumTimesTables which sums the result of the sums of the elements specified in tables multiplied by all the numbers in between min and max including themselves.
#
# For example, for sumTimesTables([2,5],1,3) the result should be the same as
#
# 2*1 + 2*2 + 2*3 +
# 5*1 + 5*2 + 5*3
# i.e. the table of two from 1 to 3 plus the table of five from 1 to 3
#
# All the numbers are integers but you must take in account:
#
# tables could be empty.
# min could be negative.
# max could be really big.



# def sum_times_tables(table,a,b)
#   range = a..b
#   range.each do |number|
#     table.each do |table_n|
#       number * table_n
#     end
#   end.reduce(:+)
# end

# find range of numbers
# for each number in table, multiply by number in range and sum it up
# add all those summed numbers up

def sum_times_tables(table,a,b)
  return 0 if table == []
  range = (a..b).to_a
  table.map do |number|
    range.map do |n|
      n * number
    end.reduce(:+)
  end.reduce(:+)
end

p sum_times_tables([2,3],1,3)
p sum_times_tables([1,3,5],1,1)
p sum_times_tables([1,3,5],1,10)
p sum_times_tables([],1,10)
p sum_times_tables([1,2,3,4,5,6,7,8,9,10],1,10)
p sum_times_tables([10,9,8,7,6,5,4,3,2,1],1,10)
p sum_times_tables([5,4,7,8,9,6,3,2,10,1],1,10)
