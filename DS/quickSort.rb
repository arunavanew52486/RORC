def quickSort(arr)
    return arr if arr.length <= 1

    pivot = arr.delete_at (arr.length/2)
    left = []
    right = []

    arr.each do |x|
        if x < pivot
            left << x
        else
            right << x
        end
    end

    quickSort(left) + [pivot] + quickSort(right)
end

array = [4,6,1,7,8,0,-1,3,1,6,7,8]
puts "#{quickSort(array)}"

