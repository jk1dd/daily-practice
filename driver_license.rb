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

def driver(data)
  constructed_license_number = ""
  data[2].upcase.ljust(5, '9')
  data[3].split('-')[2][2]
end