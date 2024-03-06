# Raise Exp
def raise_exception
    puts 'I am before the raise.'
    raise 'oops! An error has occured'
    puts 'I am after the raise'
end
# raise_exception()


# Handling Exp
def raise_and_rescue
    begin
        puts 'Before the raise.'
        raise 'An error occured.'
        puts 'After the raise.'
    rescue
        puts 'Code rescued.'
    end
    puts 'After the begin block.'
end
# raise_and_rescue

# Else: The else clause is executed if body of begin statement is completed without exceptions. If an exception occurs, else clause will not be executed.
puts "\n\nelse clause ----------------"
begin
    puts "first line"
    rescue ScriptError
        puts "second line"
    rescue NoMemoryError
        puts "Third line"
    else
        puts "Other lines...."
end
# first line
# Other lines....
puts "\n\n"
begin
    puts "first line"
    raise "Oops"
    rescue ScriptError
        puts "second line"
    rescue NoMemoryError
        puts "Third line"
    rescue Exception
        puts "Fourth line: handled"
    else
        puts "Other lines...."
end
# first line
# 16.Exceptions/exception1.rb:25:in `<main>': Oops (RuntimeError)


puts "\n\nexception object ---------------"
begin
    raise 'an exception'
    rescue StandardError => e
        puts "Exception Class: #{ e.class.name }"   # RuntimeError
        puts "Exception Message: #{ e.message }"    # an exception
        puts "Exception Backtrace: #{ e.backtrace }"# ["16.Exceptions/exception1.rb:57:in `<main>'"]
end


puts "\n\n ensure statement ----------------"
begin
    raise StandardError, 'Just an Exception'
    rescue StandardError => e
        puts e.message
        puts e.backtrace.inspect
    ensure
        puts "The ensure code will always run"
end


# puts "\n\n retry statement ----------------"
# y = "alreadyExist"
# begin
#     x = Dir.mkdir(y)
#     if x
#         puts "Directory created"
#     end
# rescue
#     puts "directory already exist"
#     y = "newDir"
#     retry
# end
# First it will create 'alreadyExist' dir, but if we run it again, it will throw an exception, and go to rescue block, then it will retry from begin block, and this time it will create the folder 'newDir'


puts "\n\n redo statement (not a part of exception handling) ----------------"
flag = false

for x in 1..20
    puts x
    if x == 10 && flag == false
        flag = true
        puts "redoing at #{x}....."
        redo
    end
end

puts "\n\n\n"

i = 1
while i < 20
    puts i
    if i == 10 && flag == false
        flag = true
        puts "redoing at #{i}....."
        redo
    end
    i += 1
end

puts "\n\n\n"















