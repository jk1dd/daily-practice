def talker(time)

conversions = {
  0 => 'Oh',
  1 => 'One',
  2 => 'Two',
  3 => 'Three',
  4 => 'Four',
  5 => 'Five',
  6 => 'Six',
  7 => 'Seven',
  8 => 'Eight',
  9 => 'Nine',
  10 => 'Ten',
  11 => 'Eleven',
  12 => 'Twelve',
  13 => 'Thirteen',
  14 => 'Fourteen',
  15 => 'Fifteen',
  16 => 'Sixteen',
  17 => 'Seventeen',
  18 => 'Eighteen',
  19 => 'Nineteen',
  20 => 'Twenty',
  30 => 'Thirty',
  40 => 'Forty',
  50 => 'Fifty'
}

  split_time = time.split(':')
  hour = split_time[0].to_i
  mins = split_time[1].split('').map { |number| number.to_i}

  am_or_pm = 'am' if hour < 12
  am_or_pm = 'pm' if hour >= 12

  hour -= 12 if hour > 12 || hour == 0
  hour = hour.abs
  hour_as_string = conversions[hour]

  case mins.join.to_i
    when 0 then string_mins = nil
    when (1..9) then string_mins = "#{conversions[mins[0]]} #{conversions[mins[1]]}"
    when (10..19) then string_mins = "#{conversions[mins.join.to_i]}"
    when 20,30,40,50 then string_mins = "#{conversions[mins.join.to_i]}"
    else string_mins = "#{conversions[mins.join.to_i - mins[1].to_i]} - #{conversions[mins[1]]}"
  end

  puts "it's #{hour_as_string} #{string_mins} #{am_or_pm}"

end

puts talker('23:14')
puts talker('23:33')
puts talker('01:30')
puts talker('12:05')
puts talker('14:01')
puts talker('14:21')
puts talker('15:12')
