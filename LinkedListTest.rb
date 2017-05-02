class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack

  def initialize
     @top = nil
  end

   # Push a value onto the stack
  def push(value) 
     @top = Node.new(value, @top)   # create new node with new value, next node is the previous top
  end

  def pop
     value = @top.value
     @top = @top.next_node
     value
  end

  def print_values(list_node)
     if list_node
      print "#{list_node.value} --> "
       print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end
end



stack = Stack.new #initialize nil
stack.push(1) #push function creates new node by calling LinkedListNode.new(value)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)
puts stack.pop
puts stack.pop
puts stack.pop
puts stack.pop
puts stack.pop
puts stack.pop
