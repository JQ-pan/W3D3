require "byebug"

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

# p fibs_rec(5)

def bsearch(array, target)
    # debugger
    return nil if array.length == 0
    mid_index = array.length / 2
    middle = array[mid_index]
    compare = target <=> middle
    if compare == 1
        ans = bsearch(array[mid_index + 1..-1], target)
        # debugger
        if ans.nil?
            nil
        else
            mid_index + 1 + ans
        end

    elsif compare == -1
        bsearch(array[0...mid_index], target)
    elsif compare == 0
        return mid_index
    end
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

class Array
    def merge_sort
        return nil if self.length == 0
        return self if self.length == 1

        mid_point = self.length / 2

        left = self.take(mid_point)
        right = self.drop(mid_point + 1)
        
        if left[0] > right[0]
            right, left = left, right

    end

    def merge(arr_1, arr_2)
        arr_1.concat(arr_2)
    end
end