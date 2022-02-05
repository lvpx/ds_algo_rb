require_relative '../data_structures/linked_list'

# Find the kth to last element of a singly linked list.
# list = 3 -> 5 -> 7 -> -1 -> 10 -> 11
# k = 3
# output = -1
# First solution:
# Reach the end of the list and count all the elements
# Now again reach length - k.
#
# Second solution:
# Pass through the list with two pointers and the second pointer
# k times behind the first. As soon as the 1st pointer reaches
# end we have our answer.
# 
# Third solution: invert the list and start from the other 
# side till k.

# Driver code
k = 73
ll = LinkedList.new
[3, 5, 7, 6, 9, -1, 10, 11].each { |ele| ll.append(ele) }

def kth_to_last(ll, k)
  # Initialize both pointers
  first = ll.head
  second = ll.head

  # Move the first pointers k - 1 nodes ahead
  k -= 1
  until k.zero? do
    k -= 1
    return "list too small" if first.next.nil?
    first = first.next
  end

  # Move both pointers together to reach the end of the list
  until first.next.nil?
    first = first.next
    second = second.next
  end

  return second.val
end
