class Stack
    def initialize
        @arr = []
    end

    def push(n)
        @arr.push(n)
    end

    def pop
        if isEmpty?
            puts "Stack is already empty!!!"
        else
            x = @arr.pop
            puts "Poped: #{x}"
        end
    end

    def show
        if isEmpty?
            puts "<Empty Stack>"
        else
            a = @arr.reverse
            puts a
        end
    end

    def top
        if isEmpty?
            puts "Stack is already empty!!!"
        else
            puts "Top => #{@arr[@arr.length-1]}"
        end
    end

    private
    def isEmpty?
        @arr.empty?
    end
end

# -------------------------------------------

stack = Stack.new
puts "Empty stack created..."

while true
    print "\n-----Menu-----\n\t- Enter 1 to Push\n\t- Enter 2 to Pop\n\t- Enter 3 to show\n\t- Enter 4 to see top\n\t- Enter any other to exit\n\n"
    print "Enter your choice: "
    inp = Integer(gets())
    system("clear")

    case inp
    when 1
        print "Enter value: "
        n = Integer(gets())
        stack.push(n)
    when 2
        stack.pop
    when 3
        stack.show()
    when 4
        stack.top
    else
        puts "Exit..."
        exit
    end
end

