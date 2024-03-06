class Singleton
    @x = new

    private_class_method :new

    def self.fn2
        @x
    end

    def self.fn1
        puts "Inside fn"
    end

    def fn
        puts "Inside obj fn"
    end

end

# s1 = Singleton.new
# s2 = Singleton.new

s1 = Singleton.fn2
s2 = Singleton.fn2

if s1.equal?(s2)
    puts "yes"
else
    puts "no"
end

Singleton.fn1

s2.fn






