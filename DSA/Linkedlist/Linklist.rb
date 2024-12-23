class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add_at_head(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
    @tail = @head if @tail.nil?
  end

  def add_at_tail(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def length
    len = 0
    current = @head
    while current != nil
      len += 1
      current = current.next_node
    end
    puts "Length: #{len}"
  end

  def search_by_value(value)
    current = @head
    while current != nil
      if current.data == value
        puts "The value #{value} is found."
        return
      end
      current = current.next_node
    end
    puts "Node with value #{value} not found."
  end

  def reverse
    current = @head
    prev = nil
    while current != nil
      next_node = current.next_node
      current.next_node = prev
      prev = current
      current = next_node
    end
    @head = prev
  end

  def display
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next_node
    end
    puts "nil"
  end
end

list = LinkedList.new
list.add_at_head(10)
list.add_at_head(23)
list.add_at_head(67)
list.add_at_tail(5)
list.add_at_head(77)
list.add_at_tail(34)

list.search_by_value(23)
list.search_by_value(77)
list.search_by_value(100)

list.display
list.length
list.reverse
list.display
