# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, prime?, that accepts an Integer. 
# It should return a boolean indicating whether or not the given number is a prime. 
# A prime number is only divisible by 1 and itself, it should have no other divisors.

require "byebug"

def prime?(num)
    divisor = []
    non_divisor = []
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
             divisor << num
        else 
           non_divisor << num  
        end
    end
    if divisor.size > 0
        return false
    else
        return true
    end
end