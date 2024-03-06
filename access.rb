puts 22.class
puts (22.5).class
puts "hello".class
puts true.class
puts nil.class
puts [1, "hello", 22.6, 200, "y"].class
puts ({ "hey" => "there", :hello => "friend"}).class


# $var1 - "global"
# @@var2 - "class level"
# @var3 - "instance level"
# var4 - "local"

puts "----------------------------------------------"
var = "123"
puts "#{var}"
puts "#{var.to_i}"
puts "#{var.to_f}"

var = 23.99983606
puts "#{var}"
puts "#{var.to_i}"
puts "#{var.to_s}"

var = "hello"
puts "#{var.to_i}"
puts "#{var.to_f}"

var = "he123o"
puts "#{var.to_i}"
puts "#{var.to_f}"

var = "hello123"
puts "#{var.to_i}"
puts "#{var.to_f}"

var = "123hello"
puts "#{var.to_i}"
puts "#{var.to_f}"

var = "hello world"
# puts "#{var.to_a}"    # error

var = { 1 => "hello"}
puts "#{var.to_a}"
# puts "#{var.to_i}"  # error

# var = [:hello, :hello2]
# puts "#{var.to_h}"



# ref: https://kddnewton.com/2021/09/09/ruby-type-conversion.html




