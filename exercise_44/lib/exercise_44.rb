def partition(array, num)
    smaller = []
    greater = []
    array2 = []
    array.each_with_index do |x, index|
        if x >= num
            greater << x
        end
        if x < num
            smaller << x
        end
    end
    array2 << smaller
    array2 << greater
    return array2
end
def merge(hash1, hash2)
    hash3 = hash1.merge(hash2)
    return hash3
end
def censor(sentence, array)
    words_array = sentence.split(" ")
    words_array.each do |x|
       if array.include?(x.downcase)
        x = x.gsub!(/[aeiouAEIOU]/,"*")
       end
    end
    return words_array.join(" ")
end
def power_of_two?(num)
    if num.to_s(2).count('1') == 1
        true
    else
        false
    end
end
def palindrome?(string)
    split_string = string.split("")
    reversed = []
    string.size.times { reversed << split_string.pop }
    reversed = reversed.join
    if string == reversed
        true
    else 
        false
    end
end
def substrings(string)
    output = []
    (0...string.length).each do |i|
      (i...string.length).each do |j|
        output << string[i..j]
      end
    end
    output
end
def palindrome_substrings(string)
    pal_sub = []
    substring = substrings(string)
    substring.each do |x|
        if ((palindrome?(x)) && (x.length > 1))
            pal_sub << x
        end
    end
    return pal_sub
end