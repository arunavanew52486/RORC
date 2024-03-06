arr = [1, 3, 5, 6, 10, 20, 33, 100]
puts "Before rev: #{arr}"

j = arr.length-1
for i in (0...arr.length/2)
    puts "#{arr[i]} : #{arr[j]}"
    tmp = arr[i]
    arr[i] = arr[j]
    arr[j] = tmp
    j = j-1
end

puts "After rev: #{arr}"
