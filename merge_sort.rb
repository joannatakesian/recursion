def merge_sort(list)
    left, right, sorted_list = []
    
    return list if list.size <= 1

    midpoint = list.size/2
    left = list[0...midpoint]
    right = list[midpoint..-1]
    left = merge_sort(left)
    right = merge_sort(right)

    if left[-1] <= right [0]
        left.concat right
        return left
    end

    sorted_list = merge(left, right)
    return sorted_list
end

def merge(left, right)
    sorted_list = []
    
    while left.size > 0 && right.size > 0 do
        if left[0] <= right[0]
            sorted_list << left.shift
        else
            sorted_list << right.shift
        end
    end
    
    sorted_list.concat left if left.size > 0
    sorted_list.concat right if right.size > 0

    return sorted_list

end

puts merge_sort([1, 5, 13, 2, 6, 3, -5, 235, 58, 1])