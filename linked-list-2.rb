# require "byebug"

class LinkedList
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

  def print_values(list_node)
    print "#{list_node.value} --> "
    if list_node.next_node.nil?
      print "nil\n"
      return
    else
      print_values(list_node.next_node)
    end
  end

  def reverse_list(list, previous = nil)
    while list
      current_node = list
      next_node = current_node.next_node
      current_node.next_node = previous
      list = next_node
      previous = current_node
    end

    current_node
  end

  lastnode = LinkedList.new(7)
  secondnode = LinkedList.new(55, lastnode)
  firstnode = LinkedList.new(39, secondnode)

  print_values(firstnode)
  puts "---------"
  revlist = reverse_list(firstnode)
  print_values(revlist)