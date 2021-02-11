require 'pry'

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# def merge_two_lists(l1, l2)
#   # traverse each list
#   # compare value
#   # ??
  
# end

a = ListNode.new(1, nil)
b = ListNode.new(2, a)
l1 = ListNode.new(4, b)

c = ListNode.new(1, nil)
d = ListNode.new(3, c)
l2 = ListNode.new(4, d)

# binding.pry
# from internet
def merge_two_lists(l1, l2)
  dummy = ListNode.new(nil)
  current = dummy
  binding.pry
  while l1 && l2
    if l1.val < l2.val
      current.next = l1
      l1 = l1.next
    else
      current.next = l2
      l2 = current.next
    end
    current = current.next
  end
  current.next = l1 || l2
  dummy.next
end

merge_two_lists(l1,l2)
# binding.pry
''