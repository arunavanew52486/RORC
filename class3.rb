class B
    X = "outside X"
    def initialize
        # X = "outside X"   # error, can't declare constant here
        x = "initialize method x"
        @x = "initialize method @x"
        @@x = "initialize method @@x"
        $x = "initialize method $x"
    end

    def constant
        # X = "outside X"   # can't declare constant inside any method
        print "const:"
        puts X
    end

    def local
        print "local:"
        # puts x     # error
        puts ""
    end

    def instance
        print "instance:"
        puts @x
    end

    def instance2
        # Here @x was modified, that was initilized inside initialize
        @x = "inside @x"
        print "instance2:"
        puts @x
    end

    def class
        print "class:"
        puts @@x
    end

    def global
        print "global:"
        puts $x
    end

    def test
        # Because @x was kind of initialized in the instance2 method, so now its accessable throughout all methods
        puts "test: #{@x}"
    end
end

b = B.new

b.constant
b.local
b.instance
b.instance2
b.class
b.global
b.test






