def max_rotation(num)
    length = num.to_s.size
    (1..length).each do |n|
        num = rotate_rightmost_digits(num, length - n + 1)
    end
    num.to_i
end

def rotate_rightmost_digits(number, n)
  arr = number.to_s.chars
  (arr[0..-(n+1)] + rotate_array(arr[-n..-1])).join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845