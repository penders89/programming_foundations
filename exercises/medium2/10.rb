def sum_square_difference(n)
    sum = 0
    square_sum = 0
    (1..n).each do |num|
        sum += num
        square_sum += num**2
    end
    sum_square = sum**2
    sum_square - square_sum
end



p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150