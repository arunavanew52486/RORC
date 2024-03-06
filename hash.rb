t = { "height" => "6 ft", 12 => 20, 14 => "hello123"}
puts t
puts "-------------------------------------"


t = { ["height"] => "6 ft"}
puts t
puts t[["height"]]
puts "-------------------------------------"


t = { ["height", 5] => "6 ft", [5] => "yes", ["hello", 6] => 123 }
puts t
puts t[["height", 5]]
puts "-------------------------------------"


t = { { 2 => "6 ft"} => "hash" }
puts t
puts "-------------------------------------"



arr = [1, "2", "34 yes"]
t = { arr => "arr key"}
puts t
puts t[arr]
arr.push "one more"
# puts arr
puts t[arr]
puts "-------------------------------------"


str = "hello"
t = { str => "good day"}
puts t[str] # works
str.upcase
puts t[str] # works
str = ""
puts t[str] # no longer works
puts "-------------------------------------"


t = { :hello => 123}
puts t
puts t[:hello]
puts "-------------------------------------"


# t = { :hello: "hash"}   # error
# t = { :hello : "hash"}  # error
# t = { :hello :"hash"}   # error

t = { "hello": 123}   # old syntax
puts t
puts "-------------------------------------"


t = { "height" => "6 ft", 12 => 20, 14 => "hello123"}
# or
# t = { "height": "6 ft", 12: 20, 12: "hello123"} #error
t = { "height": "6 ft", "12": 20, "14": "hello123"} #error

puts t.key?("height")   # true
puts t.key?(:height)    # false
puts "-------------------------------------"


t = { name: "arunava", "surname": "das"}
puts t.key?("name")
puts t.key?(:name)
puts t.key?("surname")
puts t.key?(:surname)
puts "----------------- symbol test --------------------"


t = { :name => "arunava", "surname" => "das"}
puts t.key?("name")
puts t.key?(:name)
puts t.key?("surname")
puts t.key?(:surname)
puts "------------------  symbol test -------------------"


t = { name: "arunava", "surname" => "das"}
puts "-------------------------------------"


name = 2
t = { name: "arunava" }
puts t
puts t[name]
puts t[:name]
puts "----------------integer---------------------"


t = { name: "arunava"}
puts t
t["surname"] = "das"
puts t
puts "-------------------------------------"


t = { "height" => "6 ft", 12 => 20, 12 => "hello123"}   # overrites 12 from 20 to "hello123"
puts t
puts "-------------------------------------"


t = { "height" => "6 ft", 12 => 20, 14 => "hello123"}
t.each do |key, val|
    print "key: #{key}, value: #{val}\n"
end


name_and_age = { "Bob" => 42, "Steve" => 12, "Clark" => 12 }
# Used to filter out hash, it returns a new hash
m = name_and_age.select { |k,v| k == "Bob" }
puts m
m = name_and_age.select { |k,v| v == 12 }
puts m
puts "-------------------------------------"


t = { _1: 23, _2: "arunava", _9: "das"}
puts t
# puts t[2]   # nil
# puts t[_2]  # err
# puts t.fetch(1) #err


puts "-------------------------------------"


str1 = "hello"
str2 = "hello"

obj1 = :hello
obj2 = :hello

if (str1.object_id === str2.object_id)
    puts "both str have same obj id"
else
    puts "both str have diff obj id"
end

if (obj1.object_id === obj2.object_id)
    puts "both obj have same obj id"
else
    puts "both obj have diff obj id"
end


puts "---------------- why symbols ---------------------"

