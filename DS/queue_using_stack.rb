class Stack
    def initialize
        @arr = []
    end

    def push(n)
        @arr.push(n)
    end

    def pop
        if !isEmpty?
            x = @arr.pop
            return x
        end
    end

    def show
        a = @arr.reverse
        return a
    end

    def top
        return @arr.last
    end

    def isEmpty?
        @arr.empty?
    end
end

class Queue
    def initialize
        @stack1 = Stack.new
        @stack2 = Stack.new
    end

    def enqueue(n)
        @stack1.push(n)
    end

    def dequeue
        if @stack1.isEmpty?
            return "<Empty Queue>"
        else
            while !@stack1.isEmpty?
                @stack2.push(@stack1.pop)
            end
            @stack2.pop
            while !@stack2.isEmpty?
                @stack1.push(@stack2.pop)
            end
        end
    end

    def front
        if @stack1.isEmpty?
            return "<Empty Queue>"
        else
            while !@stack1.isEmpty?
                @stack2.push(@stack1.pop)
            end
            puts "Front => #{@stack2.top}"
            while !@stack2.isEmpty?
                @stack1.push(@stack2.pop)
            end
        end
    end

    def rear
        if @stack1.isEmpty?
            return "<Empty Queue>"
        else
            puts "#{@stack1.top} <= Rear"
        end
    end

    def show
        if @stack1.isEmpty?
            return "<Empty Queue>"
        else
            puts "#{@stack1.show.reverse}"
        end
    end
end

# -------------------------------------------

queue = Queue.new
puts "Empty queue created..."

while true
    print "\n-----Menu-----\n\t- Enter 1 to enqueue\n\t- Enter 2 to dequeue\n\t- Enter 3 to view front\n\t- Enter 4 to view rear\n\t- Enter 5 to show\n\t- Enter any other to exit\n\n"
    print "Enter your choice: "
    inp = Integer(gets())
    system("clear")

    case inp
    when 1
        print "Enter value: "
        n = Integer(gets())
        queue.enqueue(n)
    when 2
        queue.dequeue
    when 3
        queue.front
    when 4
        queue.rear
    when 5
        queue.show
    else
        puts "Exit..."
        exit
    end
end