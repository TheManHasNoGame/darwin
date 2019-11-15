class LinkedList
    attr_reader :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end 
end

    def reverse_list(list)
        while list
            stack.push(list.value)
            list = list.next_node
        end

        return stack.data
    end

    def print_values(list_node)
        if list_node
            print "#{list_node.value} -->"
            print_values(list_node.next_node)
        else
            puts "nil\n"
            return
        end
    end
    
    node1 = LinkedList.new(7)
    node2 = LinkedList.new(55, node1)
    node3 = LinkedList.new(39, node2)

    print_values(node3)
    puts "---------"
    revlist = reverse_list(node3)
    print_values(revlist)