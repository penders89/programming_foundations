def fibonacci(n)
    first = 1
    second = 1
    (n-2).times do 
        temp_second = first
        first = (first + second) 
        second = temp_second
    end
    first
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

p fibonacci(50000)