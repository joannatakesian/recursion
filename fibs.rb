def fibs(n)
    counter = 0
    result = []
    
    while counter < n
        if counter == 0
            result << 0
        elsif counter == 1
            result << 1
        else
            result << result[counter-1] + result[counter-2]
        end
        counter += 1
    end
    
    return result[-1]
end
        
def fibs_rec(n)
    return 0 if n == 1
    return 1 if n == 2
    return fibs_rec(n-1) + fibs_rec(n-2)
end

puts fibs(15)
puts fibs_rec(15)