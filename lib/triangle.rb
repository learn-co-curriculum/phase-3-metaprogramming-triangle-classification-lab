class Triangle
  # write code here
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    is_triangle
    if x == y &&  y == z
      :equilateral
    elsif  x == y || y == z || x == z
      :isosceles
    else  
      :scalene
    end
  end

  def triangle_unequal?
    x + y > z && x + z > y && y + z > x
  end

  def greater_than_zero?
    [x, y, z].all?(&:positive?)
  end

  def is_triangle
    raise TriangleError unless greater_than_zero? && triangle_unequal?
  end

  class TriangleError < StandardError
  end
end
