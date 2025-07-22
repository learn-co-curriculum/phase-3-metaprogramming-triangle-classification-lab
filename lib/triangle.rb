class Triangle
  class TriangleError < StandardError; end

  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    validate_triangle

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

  def sides
    [side_a, side_b, side_c]
  end

  def validate_triangle
    validate_sides
    validate_is_equal
  end

  def validate_sides
    raise TriangleError, "Triangle has 0 or negative sides" if has_zero_or_negative_sides?
  end

  def has_zero_or_negative_sides?
    sides.any? { |side| !side.positive? }
  end

  def validate_is_equal
    raise TriangleError, "Triangle violates the triangle inequality rule" unless is_equal?
  end

  def is_equal?
    side_a + side_b > side_c &&
      side_a + side_c > side_b &&
      side_b + side_c > side_a
  end
end
