# Implement a basic stack data structure
# We will use a single linked list with tail pointer
require_relative '../data_structures/linked_list'

class Stack
  def initialize
    @ll = LinkedList.new
  end

  # push to stack
  def push(ele)
    @ll.prepend(ele)
  end

  # pop top element
  def pop
    top = @ll.head.val unless @ll.head.nil?
    @ll.delete(top) unless top.nil?
    top
  end

  def peek
    @ll.head.val
  end

  def empty?
    @ll.head.nil?
  end

  def visit
    @ll.visit
  end
end

st = Stack.new
[1, 2, 3, 4, 5].each { |ele| st.push(ele) }
puts st.visit
puts st.pop
puts st.peek
puts st.pop
puts st.visit
puts st.empty?
3.times {st.pop}
puts st.empty?