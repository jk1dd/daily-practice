# add $ sign and any trailing zeros needed

def format_money(amount)
  # amount.to_s.prepend('$').ljust(6, '0')
  '$%.2f' % amount
end
