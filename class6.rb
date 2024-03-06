class Parent
    def test
        puts "calling all from within the class--"
        privateMethod
        protectedMethod
        publicMethod
    end

    private
    def privateMethod
        puts "I am private"
    end

    protected
    def protectedMethod
        puts "I am protected"
    end

    public
    def publicMethod
        puts "I am public"
    end
end

obj = Parent.new
# obj.privateMethod   # error
# obj.protectedMethod    # error
obj.publicMethod
obj.test

puts "-------------"
class Son < Parent
    def cry
        puts "Son is crying"
    end
public
    def test2
        puts "calling all from within the class: son--"
        privateMethod
        protectedMethod
        publicMethod
    end
end

child = Son.new
child.cry
# child.privateMethod   # error
# child.protectedMethod    # error
child.publicMethod
child.test2










