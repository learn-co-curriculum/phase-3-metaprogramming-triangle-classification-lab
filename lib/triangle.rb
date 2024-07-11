class Triangle
  def initialize(a, b, c)
    if a == 0 && b == 0 && c ==0
      raise TriangleError
    elsif a < 0 || b < 0 || c < 0
      raise TriangleError
    elsif a + b <= c || c + b <= a || a + c <= b
      raise TriangleError
    else
      @a = a
      @b = b
      @c = c
    end
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    
  end
end
