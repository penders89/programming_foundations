def letter_percentages(string)
    hash = { upper: 0, lower: 0, other: 0}
    string.chars.each do |char|
        if char.upcase == char && char.downcase == char
            hash[:other] += 1
        elsif char.upcase == char
            hash[:upper] += 1
        else
            hash[:lower] += 1
        end
    end
    hash.each do |k, v|
        hash[k] = v*100.0000 / string.chars.count
    end
    p hash
end

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }