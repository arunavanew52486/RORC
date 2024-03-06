class Node
    attr_accessor :data, :next_node
    def initialize(data, next_node)
        @data = data
        @next_node = next_node
    end
end

class LinkedList
    def initialize()
        @head = nil
    end

    def addAtEnd(n)
        if (@head)
            ptr = @head

            while ptr.next_node != nil
                ptr = ptr.next_node
            end
            ptr.next_node = Node.new(n, nil)
        else
            @head = Node.new(n, nil)
        end
    end

    def deleteAtEnd
        ptr = @head
        while ptr.next_node.next_node != nil
            ptr = ptr.next_node
        end
        ptr.next_node = nil;
    end

    def reverse
        nxt = Node.new(nil, nil)
        current = @head
        prev = Node.new(nil, nil)

        while current != nil
            nxt = current.next_node
            current.next_node = prev
            prev = current
            current = nxt
        end

        @head = prev
    end

    def show
        ptr = @head

        print "Head => "
        while ptr != nil
            print "#{ptr.data} => "
            ptr = ptr.next_node
        end
        print "X"
    end

    def head
        if (@head)
            puts "Head => #{@head.data}"
        else
            puts "Empty list"
        end
    end
end

# ----------------------------------------------------------------------------------

l = LinkedList.new
puts "Empty linked list created..."

while true
    print "\n-----Menu-----\n\t- 1: to show\n\t- 2: to see head\n\t- 3: to add at end \n\t- 4: to delete from end\n\t- 5: to reverse\n\t- Enter any other to exit\n\n"
    print "Enter your choice: "
    inp = Integer(gets())
    system("clear")

    case inp
    when 1
        l.show
    when 2
        l.head
    when 3
        print "Enter value: "
        n = Integer(gets())
        l.addAtEnd(n)
    when 4
        l.deleteAtEnd
    when 5
        l.reverse
    else
        puts "Exit..."
        exit
    end
end
