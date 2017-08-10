# The males go HaHaHa...
# The females go hahaha...
# And they always alternate male/female

def kooka_counter(laughing)
  # by_sex = laughing.split('H')
  # by_sex = laughing.split(/(?=[A-Z])/)
  # by_sex = laughing.scan(/[A-Z][a-z]+/)
  # by_sex = laughing.slice(/(?=[A-Z])/)
  laughing.split('a').chunk { |n| n =='h'}.map {|n| n}.count
end

def kooka_counter(laughing)
  laughing.delete('a').squeeze.length # this is the top answer
end

def kooka_counter(laughing)
  laughing.scan(/(.a)\1*/).length # second
end
