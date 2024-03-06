x = 1

module Foo
    x = 50
    @x1 = 500
    @@x2 = 5000

    def no_bar
        puts "no_bar: #{defined?(x)}"
        return x*99 # not able to return this x
    end

    def no_bar2
        puts "no_bar2: #{defined?(@x1)}"
        return @x1
    end

    def no_bar3
        puts "no_bar3: #{defined?(@@x2)}"
        return @@x2
    end

    def bar
        @x = 1000
        puts "bar: #{defined?(@x)}"
        return @x
    end

    # puts "In Foo x: #{x}, @x: #{@x}"
    # puts "In Foo x: #{x}, @x: #{Foo.bar}"

end

include Foo

# puts x
# puts no_bar       #err
puts no_bar2
puts no_bar3
puts bar





