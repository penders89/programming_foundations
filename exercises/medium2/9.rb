def bubble_sort!(arr)
    loop do 
        check_digit = 0
        (0..arr.size-2).each do |n|
            if arr[n] > arr[n+1]
                arr[n], arr[n+1] = arr[n+1], arr[n]
                check_digit =+ 1
            end
        end
        break if check_digit == 0
    end
end



 array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)