# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def largest_prime_factor(num)
    divisors = []
    prime_divisors = []
    (1..num).each do |y|
        if num % y == 0
            divisors << y
        end
    end
    divisors.each do |z|
        if prime?(z)
            prime_divisors << z
        end
    end
    prime_divisors.inject() do |l, r|
        if l > r
            l
        elsif r > l
            r
        end
    end
end
def prime?(number)
    (2...number).each do |x|
        if number % x == 0
            return false
        end
    end
    return true
end
def unique_chars?(string)
    if string.size == string.split("").uniq.size
        return true
    else 
        return false
    end
end
def dupe_indices(array)
    hash = {}
    count = 0
    index = []
    array.each_with_index do |e, i|
        if array.count(e) > 1
        hash[e] = array.each_index.select{|i| array[i] == e}
        end
    end
    return hash
end
def ana_array(arr1, arr2)
    if arr1.to_set == arr2.to_set
        return true
    else 
        return false
    end
end