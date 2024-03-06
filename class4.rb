class MyClass
    attr_accessor :x
    # attr_accessor :@x
    # attr_accessor :@@x
    # attr_accessor :$x
    attr_accessor :X

    def initialize
    end
end

obj1 = MyClass.new

puts "value: #{obj1.x}"
obj1.x = "hello"
puts "value: #{obj1.x}"

puts "value: #{obj1.X}"
obj1.X = "1234"
puts "value: #{obj1.X}"
obj1.X = "12345"
puts "value: #{obj1.X}"

















