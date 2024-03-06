class Queue
    def initialize
        @arr = []
    end

    def enqueue(n)
        @arr.push(n)
    end

    def dequeue
        if isEmpty?
            puts "Queue is already empty!!!"
        else
            x = @arr.shift
            puts "Deleted: #{x}"
        end
    end

    def front
        if isEmpty?
            puts "Queue is already empty!!!"
        else
            puts "Front => #{@arr.first}"
        end
    end

    def rear
        if isEmpty?
            puts "Queue is already empty!!!"
        else
            puts "#{@arr.last} <= Reat"
        end
    end

    def show
        if isEmpty?
            puts "Queue is already empty!!!"
        else
            puts "#{@arr}"
        end
    end

    private
    def isEmpty?
        @arr.empty?
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
