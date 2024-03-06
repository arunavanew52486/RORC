# Inner classes

class Marvel
    class Guardians
        def quill
            puts "Legendary Outlaw\n"
        end
        def groot
            puts "I am groot\n"
        end

        def inner
            puts "inside avengers\n"
        end
    end

    class Avengers
        def call
            puts "Avengers assemble\n"
        end

        def inner
            puts "inside avengers\n"
        end

        def tryPrivate
            obj1 = Guardians.new
            obj1.inner
            obj3 = Xmen.new
            obj3.inner
        end
    end

    class Xmen
        def inner
            puts "inside private Xmen\n"
        end
    end

    def outer
        puts "Outer function\n"
    end

    def all
        obj1 = Guardians.new
        obj1.inner
        obj2 = Avengers.new
        obj2.inner
        obj3 = Xmen.new
        obj3.inner
    end

    private_constant :Xmen
end

obj1 = Marvel::Guardians.new
obj1.quill
obj1.groot

obj2 = Marvel::Avengers.new
obj2.call
# obj2.outer    # Err: undefined - child class can't access parent methods

# obj3 = Marvel::Xmen.new   # Error: private constant Marvel
# obj3.call

obj = Marvel.new
puts obj.outer
puts obj.all    # only way to work with child private class


# Can a sibling class access another sibling class? public or private?: YES
obj2 = Marvel::Avengers.new
obj2.tryPrivate







