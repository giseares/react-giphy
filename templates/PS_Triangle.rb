# 0. define a triangle
# 1. indicate lenght side1
# 2. indicate lenght side2
# 3. indicate lenght side3
# 4. if the lenght of 3 side are uniq and the result are 1, then triangle its  equilateral
# 5. if two lenght of all side are 2, then the triangle its isosceles
# 6. everything else its scalene


def triangle
class Triangle
  def initialize(length_side)
    @length_side = length_side
  end

  def equilateral?
    length_side.uniq.count == 1
  end

  def isosceles?
    length_side.uniq.count == 2
  end

  def scalene?
    length_side.uniq.count == 3
  end
end