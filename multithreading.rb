puts "Process starts"

$str = "GLOBAL"

def fn1
    a = 0
    while a <= 3
        puts "fn1: #{a}"
        sleep(1)
        a = a + 1
    end

    puts "Global variable: #$str"
end

def fn2
    b = 0

    while b <= 3
        puts "fn2: #{b}"
        sleep(0.5)
        b = b + 1
    end

    puts "Global variable: #$str"
end

# Creating thread
x = Thread.new{fn1()}
y = Thread.new{fn2()}

# wait for the first thread to finish (to join with main thread)
x.join
y.join

puts "Process ends"

