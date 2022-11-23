def range_rec(start, stop)
    return [] if stop <= start
    [start] + range_rec(start + 1, stop)
end

# p range_rec(1, 5)

def range_ite(start, stop)
    arr = []
    (start...stop).each {|num| arr << num}
    arr
end

# p range_ite(3, 9)

def exp_1(b, n)
    return 1 if n == 0
    b * exp_1(b, n - 1)
end

# p exp_1(5, 0)
# p exp_1(2, 5)

def exp_2(b, n)
    
end