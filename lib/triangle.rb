class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end

  def kind 
    if [@a, @b, @c].any? { |side| side <= 0 } || @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
        raise TriangleError
    elsif @a == @b && @b == @c 
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else @a != @b && @b != @c && @c != @a
      :scalene
    end
  end

  class TriangleError < StandardError
  end 

end
