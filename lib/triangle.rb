class Triangle
  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def sides
    [side_a, side_b, side_c]
  end

  def kind
    case sides.uniq.length
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end
end
