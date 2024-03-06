class A
    # @z = "instance"
    def initialize(var)
        @var = var
    end
    def speak
        @y = 10
        puts "Speaking..."
    end
    def walk(x)
        puts "walked #{x} km"
        puts "test: #{@y}"
    end
end

a = A . new("a class")
# a = A .new
# a = A. new
# a = A.new

a.speak
a.walk(5)
puts a.@var
