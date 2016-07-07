def triangle(side1, side2, side3)
    sides = [side1, side2, side3].sort!
    return :invalid if sides[2] >= sides[1] + sides[0] || 
                        sides.select { |n| n<=0 }.count > 0
    return :equilateral if sides.uniq.count == 1
    return :isosceles if sides[0] == sides[1] || sides[1] == sides[2]
    return :scalene
end
    


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid