arr = [1, "2", 3.0, "4 5 6", 7, "8"]

puts "until loop -----"
i = 0
num = arr.length-1
begin
    puts arr[i]
    i += 1
end until i > num

puts "loop -----"
i = 0
loop do
    if i == arr.length
        break
    end
    puts arr[i]
    i += 1
end

puts "while -----"
i = 0
while i < arr.length
    puts arr[i]
    i += 1
end





puts "break -----"
for i in (1..5) do
    if (i > 2)
        break
    end
    puts i
end

puts "next -----"
for i in (1..5) do
    if (i <= 2) then
        next
    end
    puts i
end




