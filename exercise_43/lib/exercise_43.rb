def average(num1, num2)
    return (num1.to_f + num2.to_f)/2
end

def average_array(array)
    length = array.size
    array = array.map do |x|
        x = x.to_f
    end
        total = array.inject() {|acc, num| acc + num}
        array = total/length
            return array
end
def repeat(str, num)
    str = str * num
    return str
end
def yell(str)
    str = str.upcase + "!"
    return str
end
def alternating_case(sentence)
    splitted = sentence.split(" ")
    splitted.each_with_index do |x, index|
        if index.even?
            x = x.upcase
            splitted[index] = x
        else 
            x = x.downcase
            splitted[index] = x
        end
    end
    return splitted.join(" ")
end
def hipsterfy(word)
    r = /.*\K[aeiou]/x  
    word.sub(r,'')
end
def vowel_counts(str)
    hash = {}
    str = str.downcase
    splitted = str.split("")
    splitted.each do |x|
        if x =~ (/[aeiou]/)
            hash[x] = str.count(x)
        end
    end
    return hash
end
def caesar_cipher(message, num)
    caesar_string = ""

    message.each_char do |i|
      if ("a".."z").include?(i.downcase)
        num.times {i = i.next}
      end
      caesar_string << i[-1]
    end
    return caesar_string
end