counter = 0 # not thread safe

mutex = Mutex.new

# Thread 1
thread1 = Thread.new do
    100.times do
        mutex.synchronize do
            counter += 1
            sleep(0.01)
        end
    end
end

# Thread 2
thread2 = Thread.new do
    100.times do
        mutex.synchronize do
            counter += 1
        end
    end
end

thread1.join
thread2.join

puts "Counter: #{counter}"





