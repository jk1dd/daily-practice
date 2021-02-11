require 'pry'

class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add(value)
    # sets current node to head
    current_node = @head
    # while current node has a next node, it sets current_node to the next node (traverses the list)
    while current_node.next_node != nil
      current_node = current_node.next_node
      # it exits once it reaches the end e.g. next node is nil
    end
    # and finally adds a new node at the end
    current_node.next_node = Node.new(value, nil)
  end

  def find(value)
    # it sets current_node to the head of the list
    current_node = @head
    
    # it returns nothing if there is no next node 
    # i.e. if head was only value and you didn't search for it
    return nil if !current_node.next_node
    
    # it returns the current_node if you did search for its value
    # i.e. the head's value
    return current_node if current_node.value == value

    # ??? while i can reassign it to the next node
    # i.e. there is a value for the next node rather than nil
    while (current_node = current_node.next_node)
      # it returns the current node when value matches the one searched for
      return current_node if current_node.value == value

      # ??? exits when nil
    end
  end

  def delete(value)
    current_node = @head
    if current_node.value == value
      @head = current_node.next_node
    else
      while (current_node.next_node != nil) && (current_node.next_node.value != value)
        if (current_node.next_node == nil) || (current_node.next_node.value == value)
          current_node.next_node = current_node.next_node.next_node
        else
          current_node = current_node.next_node
        end
      end
      current_node.next_node = current_node.next_node.next_node
    end
  end

  def print_list
    current_node = @head
    puts current_node.value
    binding.pry
    while (current_node = current_node.next_node)
      puts current_node.value
    end
  end
end

my_list = LinkedList.new(5)
my_list.add(4)
my_list.add(6)
my_list.add("string")

# returns a Node object
the_thing = my_list.find(4)

my_list.print_list

binding.pry
''