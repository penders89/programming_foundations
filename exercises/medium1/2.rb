def rotate_rightmost_digits(number, n)
  arr = number.to_s.chars
  (arr[0..-(n+1)] + rotate_array(arr[-n..-1])).join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915  
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917