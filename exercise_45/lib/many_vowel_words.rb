# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence as a String
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ")
    new_words = words.select do |word|
        arr_vowels = num_vowels(word)
        arr_vowels >= 2
    end
    new_words.join(" ")
end

def num_vowels(word)
    count = 0
    word.each_char do |char|
        count += 1 if (char).match(/[aeiou]/)
    end
    return count
end