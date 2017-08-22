# 1–5: The first five characters of the surname (padded with 9s if less than 5 characters)
#
# 6: The decade digit from the year of birth (e.g. for 1987 it would be 8)
#
# 7–8: The month of birth (7th character incremented by 5 if driver is female i.e. 51–62 instead of 01–12)
#
# 9–10: The date within the month of birth
#
# 11: The year digit from the year of birth (e.g. for 1987 it would be 7)
#
# 12–13: The first two initials of the first name and middle name, padded with a 9 if no middle name
#
# 14: Arbitrary digit – usually 9, but decremented to differentiate drivers with the first 13 characters in common. We will always use 9
#
# 15–16: Two computer check digits. We will always use "AA"

# data = ["John","James","Smith","01-Jan-2000","M"]
# Where the elements are as follows
#
#  0 = Forename
#
# 1 = Middle Name (if any)
#
# 2 = Surname
#
# 3 = Date of Birth (In the format Day Month Year, this could include the full Month name or just shorthand ie September or Sep)
#
# 4 = M-Male or F-Female

require 'date'

def driver(data)
  first = data[2].upcase.ljust(5, '9')
  second = data[3].split('-')[2][2]
  # Date.parse(data[3]).month.to_s

  if data[4] == "M"
    third = Date.parse(data[3]).month.to_s.rjust(2, '0')
  else
    if Date.parse(data[3]).month >= 10
      third = "6" + Date.parse(data[3]).month.to_s[1]
    else
      third = Date.parse(data[3]).month.to_s.rjust(2, '5') # account for adding 5 to female driver first digit
    end
  end

  fourth = Date.parse(data[3]).day.to_s.rjust(2, '0')
  fifth = data[3].split('-')[2][-1]

  if data[1] == ""
    sixth = data[0][0] + '9'
  else
    require 'pry'; binding.pry
    sixth = data[0][0] + data[1][0]
  end
  seventh = '9'
  eigth = 'AA'
  constructed_license_number = first + second + third + fourth + fifth + sixth + seventh + eigth
end

# data = ["John","James","Smith","01-Jan-2000","M"]
data = ["Johanna","","Gibbs","13-Dec-1981","F"]
p driver(data)
