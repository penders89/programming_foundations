def featured(n)
    current = n+1
    loop do
        break if current.odd? && current % 7 == 0 &&
            current.to_s.chars.uniq.count == current.to_s.chars.count
        break if current > 9876543210
        current +=1
    end
    current
end
    



p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements