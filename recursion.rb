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
    return 1 if n == 0
    return b if n == 1

    if n.even?
        exp_2(b, n / 2) ** 2
    else
        b * (exp_2(b, (n - 1) / 2) ** 2)
    end
end

# p exp_2(5, 2)
# p exp_2(2, 5)
# p exp_2(8, 12)

class Array
    
    def deep_dup
        newarr = []
        self.each do |ele|
            if ele.is_a?(Array)
                newarr << ele.deep_dup
            else
                newarr << ele
            end
        end
        newarr
    end
end

# p [1, [2], [3, [4]]].deep_dup


    def fibs_rec(n)
        if n <= 2
          [0, 1].take(n)
        else
          fibs = fibs_rec(n - 1)
          fibs << fibs[-2] + fibs[-1]
        end
      end

# def fibs(n)
#     arr = [0,1]
#     return arr[n-1] if n < 2 

#     while arr.length < n
#         arr << arr[-1] + arr[-2]
#     end
#     arr
# end

p fibs(5)