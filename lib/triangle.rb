require "pry"

class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def sides
    [side1, side2, side3]
  end

  def kind
    if valid_sides?
      case sides.uniq.length
      when 1
        :equilateral
      when 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid_sides?
    sorted_sides = sides.sort
    sides.all? { |side| side > 0 } && (sorted_sides[0] + sorted_sides[1] > sorted_sides[2])
  end

  class TriangleError < StandardError
  end
end

# example1 = Triangle.new(3, 5, 6)

# binding.pry

