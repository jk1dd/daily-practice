require "pry"
# 01:30 == it's one thirty am
# 12:05 == it's twelve oh five pm
# 14:01 == it's two oh one pm
# 14:21 == it's two twenty one pm
# 15:12 == it's two twelve pm

# take in the time
# determine am or pm based on hh
# if pm, subtract 12 from the hh
# convert minutes
# special needs for teen minutes
# build the phrase and return it

def talker(time)
  hour_conversions = {
    '01' => 'one',
    '02' => 'two',
    '03' => 'three',
    '04' => 'four',
    '05' => 'five',
    '06' => 'six',
    '07' => 'seven',
    '08' => 'eight',
    '09' => 'nine',
    '010' => 'ten',
    '011' => 'eleven',
    '012' => 'twelve'
  }

  teens_minutes_conversion = {
    '11' => 'eleven',
    '12' => 'twelve',
    '13' => 'thirteen',
    '14' => 'fourteen',
    '15' => 'fifteen',
    '16' => 'sixteen',
    '17' => 'seventeen',
    '18' => 'eighteen',
    '19' => 'nineteen'
  }

  tens_minutes_conversions = {
    '0' => 'oh',
    '2' => 'twenty',
    '3' => 'thirty',
    '4' => 'forty',
    '5' => 'fifty'
  }

  ones_minutes_conversions = {
    # '0' => 'oh',
    '1' => 'one',
    '2' => 'two',
    '3' => 'three',
    '4' => 'four',
    '5' => 'five',
    '6' => 'six',
    '7' => 'seven',
    '8' => 'eight',
    '9' => 'nine'
  }

  time_of_day = 'am'
  hours_in_words = ''
  minutes_in_words = ''

  if time.split(':')[0].to_i > 12
    time_of_day = 'pm'
    hours_in_words = hour_conversions[(time.split(':')[0].to_i - 12).to_s.prepend('0')]
  elsif time.split(':')[0].to_i == 12
    time_of_day = 'pm'
    hours_in_words = hour_conversions[(time.split(':')[0]).to_s]
  else
    hours_in_words = hour_conversions[(time.split(':')[0]).to_s]
  end

  if time.split(':')[1].to_i.between?(11,19)
    minutes_in_words = teens_minutes_conversion[time.split(':')[1]]
  else
    minutes_in_words = tens_minutes_conversions[time.split(':')[1][0]] + ' ' + ones_minutes_conversions[time.split(':')[1][1]]
  end


  "it's #{hours_in_words} #{minutes_in_words} #{time_of_day}"
end


puts talker('23:14')
puts talker('23:33')
# puts talker('01:30')
puts talker('12:05')
puts talker('14:01')
puts talker('14:21')
puts talker('15:12')
