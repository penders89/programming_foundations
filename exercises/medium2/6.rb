def triangle(angle1, angle2, angle3)
    angles = [angle1, angle2, angle3]
    return :invalid if angles.inject(&:+) != 180 ||
                         angles.select { |n| n<=0 }.count > 0 
    return :right if angles.select{ |n| n== 90}.count == 1
    return :obtuse if angles.select{ |n| n > 90}.count == 1
    return :acute if angles.select{ |n| n < 90}.count == 3
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid