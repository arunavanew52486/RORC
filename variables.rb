puts "integer--"
t = 20
puts t

puts "string (mutable by default)--"
t = "dddd"
puts t

puts "boolean--"
t = true
puts t

puts "array--"
t = [1,2,3,5]
puts t

puts "array--"
t = [1,2,'3',"hello", 10]
puts t

puts "hash--"
t = { "w" => 1, "t" => 3, "x" => "g"}
puts t
puts t["w"]
puts t["W"]

t = { "w": 1, "t": 3, "x": "g"}
puts t
