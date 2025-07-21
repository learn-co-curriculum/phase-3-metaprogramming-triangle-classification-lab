class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
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

end
