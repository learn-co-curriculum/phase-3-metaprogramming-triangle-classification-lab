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
    raise TriangleError unless valid_sides?

    case sides.uniq.length
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end

  private

  def valid_sides?
    sorted_sides = sides.sort
    sides.all? { |side| side > 0 } && (sorted_sides[0] + sorted_sides[1] > sorted_sides[2])
  end

  class TriangleError < StandardError
  end
end
