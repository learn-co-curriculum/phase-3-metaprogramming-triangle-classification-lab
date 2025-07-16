class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    check_side_validity
    determine_kind_by_sides
  end

  class TriangleError < StandardError
    def message
      'One or more of these sides are invalid'
    end
  end

  def sides
    [@a, @b, @c]
  end

  private

  def meets_triangle_inequality?
    return false if !(@a < @b + @c) || !(@b < @a + @c) || !(@c < @a + @b)

    true
  end

  def check_side_validity
    raise TriangleError if !@a || !@b || !@c
    raise TriangleError if @a <= 0 || @b <= 0 || @c <= 0
    raise TriangleError unless meets_triangle_inequality?
  end

  def determine_kind_by_sides
    return :equilateral if sides.uniq.length == 1
    return :isosceles if sides.uniq.length == 2

    :scalene
  end
end
