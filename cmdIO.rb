print('Enter your name: ')
name = gets()
puts "Hello 1 #{name}"

# This also works

print('Enter your name: ')
name = gets
puts "Hello 2 #{name}"

# But not this works

print('Enter your name: ')
name = gets
puts 'Hello 3 #{name}'