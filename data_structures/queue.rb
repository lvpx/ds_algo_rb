# Implement a basic queue using linked lists
# Methods: add, remove, peek, print, empty?
require_relative '../data_structures/linked_list'


class Queue
  def initialize
    @ll = LinkedList.new
  end

  def empty?
    @ll.head.nil?
  end

  def append(ele)
    @ll.append(ele)
  end

  def remove
    @ll.delete(@ll.head.val) unless self.empty?
  end

  def print
    puts @ll.visit
  end

  def peek
    @ll.head.val unless self.empty?
  end
end

# Driver code
q = Queue.new
[1, 2, 3, 4, 5].each { |ele| q.append(ele) }
q.print
q.remove
q.append(6)
puts q.empty?
q.print
5.times {q.remove}
q.remove
q.print