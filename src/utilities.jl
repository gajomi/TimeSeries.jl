#################################
##### timestamp, values, colnames
#################################

function timestamp{T,N}(ta::TimeArray{T,N})
    ta.timestamp
end

function values{T,N}(ta::TimeArray{T,N})
    ta.values
end

function colnames{T,N}(ta::TimeArray{T,N})
    ta.colnames
end

#################################
###### head, tail ###############
#################################

function head{T,N}(ta::TimeArray{T,N}, n::Int)
    ta[1:n]
end

function tail{T,N}(ta::TimeArray{T,N}, n::Int)
    ta[n:length(ta)]
end
 
head{T,N}(ta::TimeArray{T,N}) = head(ta, 1)
tail{T,N}(ta::TimeArray{T,N}) = tail(ta, 2)

#################################
###### timing method ############
#################################
 
# function timeit(f::Function, v::Any, n::Int)
#     p = zeros(n)
#       for i in 1:n
#         p[i] = @elapsed f(v)
#       end
#     mean(p[2:end]) # toss out the first execution from the average
# end
