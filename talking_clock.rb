require 'pry'
# Description
# No more hiding from your alarm clock! You've decided you want your computer to keep you updated on the time so you're never late again. A talking clock takes a 24-hour time and translates it into words.
# Input Description
# An hour (0-23) followed by a colon followed by the minute (0-59).
# Output Description
# The time in words, using 12-hour format followed by am or pm.
# Sample Input data
# 00:00
# 01:30
# 12:05
# 14:01
# 20:29
# 21:00
# Sample Output data
# It's twelve am
# It's one thirty am
# It's twelve oh five pm
# It's two oh one pm
# It's eight twenty nine pm
# It's nine pm

class Clock

  def clock_talker(time)
    # split time up into hh and mm
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
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve'
    }

    tens_minutes_conversions = {
      '0' => 'oh',
      '2' => 'twenty',
      '3' => 'thirty',
      '4' => 'forty',
      '5' => 'fifty'
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

    ones_minutes_conversions = {
      '01' => 'one',
      '02' => 'two',
      '03' => 'three',
      '04' => 'four',
      '05' => 'five',
      '06' => 'six',
      '07' => 'seven',
      '08' => 'eight',
      '09' => 'nine'
    }
    am_or_pm = ""
    split_time = time.split(':') # array of split_time
    # convert hh to 12 hour time, and to words, and select am or pm
    if split_time[0].to_i > 12
      regular_time = split_time[0].to_i - 12
      am_or_pm = 'pm'
    else
      regular_time = split_time[0]
      am_or_pm = 'am'
    end

    hours_place = hour_conversions[regular_time]
    "#{hours_place}"

    # "#{hour_conversions[regular_time]} #{tens_minutes_conversions[split_time[1][0]]} #{ones_minutes_conversions[1][1]} #{am_or_pm}"
    # convert mm to words
  end
end

c = Clock.new
binding.pry
""

# p clock_talker("12:59")
