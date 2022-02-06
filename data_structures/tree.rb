# Implement a basic binary tree


class Node
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end
  
def preorder(root)
  return if root.nil?
  puts root.value
  preorder(root.left)
  preorder(root.right)
end

def postorder(root)
  return if root.nil?
  postorder(root.left)
  postorder(root.right)
  puts root.value
end

def inorder(root)
  return if root.nil?
  inorder(root.left)
  puts root.value
  inorder(root.right)
end

# Driver code
root = Node.new(3)
root.left = Node.new(4)
root.right = Node.new(5)
root.left.left = Node.new(6)
root.left.right = Node.new(7)
preorder(root)
puts ""
postorder(root)
puts ""
inorder(root)