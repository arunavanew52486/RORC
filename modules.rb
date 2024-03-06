module X
    def fn1
        puts "fn1............."
    end

    def fn2
        puts "fn2............."
    end

    def ff
        puts "X:ff............."
    end
end

class A
    include X
end
a = A.new
a.fn1
a.fn2

# ---------------------------------------------

module Y
    def fn4
        puts "fn4............."
    end

    def fn3
        puts "fn3............."
    end

    def ff
        puts "Y:ff............."
    end
end

class B
    include X
    include Y
end
b = B.new
b.fn1
b.fn2
b.fn3
b.ff




