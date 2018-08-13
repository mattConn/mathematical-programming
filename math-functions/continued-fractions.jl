# number to continued fraction

function num2cf(num, max_iterations = 20, err_bound = 1E-6)
    cf = [] # continued fraction
    i = 0 # iterations
    
    while true && i < max_iterations
        x = Int(floor(num))
        push!(cf,x)
        
        # Check for no or negligible difference btwn. x and num
        # before reciprocating this difference.
        if x != num && abs(x - num) > err_bound
            num = 1/(num-x)
        else
            break # break before division by zero
        end
        
        i+=1
    end
    
    return cf
end

# continued fraction to number
function cf2num(cf)
    n = last(cf)
    for i in length(cf)-1:-1:1
        n = 1/n + cf[i]
    end
    return n
end
