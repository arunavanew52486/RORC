def func (x, y)
    puts "I am x: #{x}"
    puts "I am y: #{y}"
    puts ""
end
func "10", 20


def func1 (x = "x", y = "y")
    puts "I am x: #{x}"
    puts "I am y: #{y}"
    puts ""
end
func1
func1 12, 22
func1 15


def func2(*var)
    puts "#{var}"   # and array
    
    puts var[1]
    
    var.each do |i|
        puts i
    end
    puts ""
end
func2 1,4,6,8
func2


def func3(*var, var2, var3)
    puts "variable: #{var}"   # and array
    puts "#{var2}"  # 2nd last value
    puts "#{var3}"  # last value
    puts ""
end
func3 10,11,12,13,14,15


def func4(var1, var2, *var)
    puts "#{var1}"  # first value
    puts "#{var2}"  # second value
    puts "variable: #{var}"   # and array
    puts ""
end
func4 10,11,12,13,14,15


def func5(var1, var2, *var, var3, var4)
    puts "#{var1}"  # first value
    puts "#{var2}"  # second value
    puts "variable: #{var}"   # and array
    puts "#{var3}"  # 2nd last value
    puts "#{var4}"  # last value
    puts ""
end
func5 10,11,12,13,14,15


