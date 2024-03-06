mutex = Mutex.new

Thread.new do
    puts "Child thread aquiring mutex"
    mutex.lock()
    sleep(6)
    puts "Child thread releasing mutex"
    mutex.unlock()
end

sleep(3)
puts "main thread attempting to aquire mutex"
mutex.lock()
puts "main thread aquires mutes"
mutex.unlock()