# input = "[{(()())}{[]}]"
# input = "[()]"
# input = "[{()}{(]}]"
print "Enter input: "
input = gets.chomp

arr = []

for i in 0..input.length
    case input[i]
        when "["
            arr.push(input[i])
        when "{"
            arr.push(input[i])
        when "("
            arr.push(input[i])
        when "]"
            if arr.last === "["
                arr.pop
            else
                arr.push(input[i])
            end
        when '}'
            if arr.last === '{'
                arr.pop
            else
                arr.push(input[i])
            end
        when ')'
            if arr.last === '('
                arr.pop
            else
                arr.push(input[i])
            end
    end    
end


if arr.empty?
    puts "balanced input"
else
    puts "not balanced input"
end