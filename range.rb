range = (1..10)
puts "#{range}"
puts "#{range.class}"
puts "Converting range -> arr: #{range.to_a}"



ret = range.reject { |i| i < 5 }
puts "Filter range: #{ret}"

ret = range.select { |i| i <= 5 }
puts "Filter range: #{ret}"



range = 10..1
puts "#{range}"
puts "Converting reverse range -> arr: #{range.to_a}"



puts "#{('a'..'e').to_a}"
puts "#{('a'...'e').to_a}"

puts "#{('a'..'aa').to_a}"
puts "#{('a'...'aa').to_a}"

puts "------------------------------------"

if ((1..10) === '5')    # no
    puts "yes"
else
    puts "no"
end

if ((1..10) === 5)  # yes
    puts "yes"
else
    puts "no"
end

if ((1..10) === '5'.to_i)   #yes
    puts "yes"
else
    puts "no"
end

puts "------------------------------------"

if ((1..10) == (1..10))   #yes
    puts "yes"
else
    puts "no"
end




