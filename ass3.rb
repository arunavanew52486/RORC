arr = [
    [[1, 2, 3], [4, 5, 6], [7, 8, 9]],
    [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']],
    [[1.2, 4.9, 6.60], [4.44, 5.123, 6.0091], [7.9, 8.0012, 9.99]]
]


for x in arr
    for y in x
        for z in y
            puts "#{z}"
        end
    end
end