# Operator overloading --

class Tester
    attr_accessor :num

    def initialize(num)
        @num = num
    end

    def +(obj)
        @num + obj.num
    end

    def *(obj)
        @num * obj.num
    end

    def **(obj)
        self.num ** obj.num
    end

end


a = Tester.new(2)
b = Tester.new(5)

puts a+b
puts a*b
puts a**b



