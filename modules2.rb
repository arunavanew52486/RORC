module M
    V = 20
    def M.f1
        puts "f1..."
    end
    def M.f2
        puts "f2..."
    end
end
puts M::V

module N
    def N.f1
        puts "f1..."
    end
    def N.f2
        puts "f2..."
    end
end
# -----------------------------

class A
    include M
end

a = A.new
a.f1


