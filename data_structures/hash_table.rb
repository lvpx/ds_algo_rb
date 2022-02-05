# Implement a simple hash table.
# Hash Function: index % array_length
# Psuedo-code
# 1. Create an array
# 2. For every key calculate its hashcode
# 3. Map the hashcode to the array index using a hashfunction
# 4. Append the key,value pair to the linkedlist/array present at the array location


DEFAULT_SIZE = 11

class Hashtable
  
  # To check state of storage
  attr_reader :storage


  def initialize
    @storage = Array.new(DEFAULT_SIZE) {|ele| LinkedList.new }
  end

  # HashTable Interface
  # Insert a key
  def insert(key, value)
  end

  def fetch(key)
  end

  def delete(key)
  end

  private
  # We can replace the key chars by their ascii values and then add them and multiply by the length of the key
  def hashcode(key)
    sum = 0
    key.each_byte {|c| sum += c}
    sum * key.size
  end

  # To map hashcode to the array index
  def hashfunc(hashcode)
    hashcode % DEFAULT_SIZE
  end

end