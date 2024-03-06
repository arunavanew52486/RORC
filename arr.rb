arr = [1,2,'3',"four",5,6.0,false]
arr.push(7)
puts "#{arr}"

arr.push([8,9,"10"])
puts "#{arr}"

a = [11,22,33]
arr.push(a)
puts "#{arr}"

arr = arr.flatten
puts "#{arr}"

brr = [1, 2, [1, 2, 3], 5, [['a', 'b'], ['c', ['d'], 'e']]]
puts "#{brr.flatten}"
