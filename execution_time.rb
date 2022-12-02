
def my_min(list)
    sorted = false
    until sorted 
        sorted = true
        (0...list.length - 1).each do |i|
            if list[i] < list[i + 1]
                list[i], list[i + 1] = list[i + 1], list[i]
                sorted = false
            end 
        end
    end  
 list.last
end 
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

#The time complexity is O(n^2) quadratic 

def my_min(list)
    smallest = list.first
    (1...list.length - 1).each do |i|
        smallest = list[i] if smallest > list[i]
    end
    smallest
end 
#The time complexity is O(n)

# Largest Contiguous Sub-sum

def largest_contiguous_subsum(list)
    sub_arr = []
    (0...list.length - 1).each do |i|
        pairs = []
        (i...list.length - 1).each do |j|
            current_pair = list[i..j]
        end
        sub_arr << pairs
    end
    sub_arr
end

list = [5, 3, -7]
   p  largest_contiguous_subsum(list) # => 8

    # possible sub-sums
    [5]           # => 5
    [5, 3]        # => 8 --> we want this one
    [5, 3, -7]    # => 1
    [3]           # => 3
    [3, -7]       # => -4
    [-7]          # => -7