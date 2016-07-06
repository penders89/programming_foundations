WORD_DIGIT = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5,
                "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
                "zero" => 0}

def word_to_digit(input)
    words.each_with_index do |word, idx|
        words[idx] = WORD_DIGIT[word] if WORD_DIGIT.has_key?(word)
    end
    words.join(' ')
end
            
            
p word_to_digit('Please call me at five five five one two three four. 
                Thanks.')

p word_to_digit('Please call me at five five five one two three four. 
                Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# this loses the full stop