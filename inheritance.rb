class Base
    def show
        puts "parent: show"
    end



end

class Child1 < Base
    def show2
        puts "child1: show2"
    end
end

class Child2 < Base
    def show
        puts "child2: show"
    end
end

obj1 = Child1.new
obj1.show
obj1.show2

obj2 = Child2.new
obj2.show


