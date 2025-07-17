class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three

    triangle?
  end

  def kind
    sides = [side_one, side_two, side_three]
    case sides.uniq.length
    when 1 then :equilateral
    when 2 then :isosceles
    else        :scalene
    end
  end

  def triangle?
    sides = [side_one, side_two, side_three]

    raise TriangleError if sides.any? { |side| side <= 0 }

    a, b, c = sides.sort
    return if a + b > c

    raise TriangleError
  end

  class TriangleError < StandardError
    def message
      'All sides must be greater than 0'
    end
  end
end
