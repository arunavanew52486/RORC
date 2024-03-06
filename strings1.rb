# Ways to create strings
s1 = 'hello'
s2 = "good morning"
s3 = String.new "let's go for a break"

puts "String: #s1"      # not interpolate
puts 'String: #{s2}'    # not interpolate
puts "String: #{s3}"    # interpolate


str = "aaa for cdfgg"

puts str["aa"]
puts str["for"]
puts str["bb"]
puts
puts str[0]
puts str[4]
puts str[-1]
puts str[100]   # also no error
puts
# idx, no. of chars
puts str[1,10]
puts str[-4, 12]
puts str[-4, 15]    # also no error
puts
puts str[1..6]
puts str[1..60] # also no error
puts str[1...6]
puts str[-5..-1]


puts "-------------------- multi line str ----------------------------"
puts "halsdfalsjfaksfsdjfa asfa sfsfsdaf s
    as dfasdf asdfasd sadfsf ss
    adfa sfsdfds afsdsd f
    a sdfas fasfssdfsd f"

puts %/ halsdfalsjfaksfsdjfa asfa sfsfsdaf s
    as dfasdf asdfasd sadfsf ss
adfa sfsdfds afsdsd f
    a sdfas fasfssdfsd f /

puts <<HELLO
halsdfalsjfaksfsdjfa asfa sfsfsdaf s
as dfasdf asdfasd sadfsf ss
adfa sfsdfds afsdsd f
a sdfas fasfssdfsd
HELLO

str = "mutable"
puts str
str[0] = 'I am M'
puts str
str.freeze
puts str
# str[0] = 'Im'     # err
# puts str


puts "-------------------- concat str ----------------------------"
str = "This " + "is " + "ruby on" + " rails"
puts str
str = "This " "is " "ruby on" " rails"
puts str
str = "This " << "is " << "ruby on" << " rails"
puts str
str = "This ".concat("is ").concat("ruby on").concat(" rails")
puts str


puts "-------------------- check str ----------------------------"
str1 = "Ruby"
str2 = "ruby"
puts str1 == str2
puts str1 === str2

str1 = "Ruby"
str2 = "Ruby"
puts str1 == str2
puts str1 === str2

puts str1.object_id == str2.object_id
puts str1.object_id === str2.object_id

puts str1.object_id == str1.object_id
puts str1.object_id === str1.object_id

sym1 = :hello
sym2 = :hello
puts sym1.object_id == sym2.object_id
puts sym1.object_id === sym2.object_id








