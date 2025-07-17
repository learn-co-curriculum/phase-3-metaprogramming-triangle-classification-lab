class Triangle
  attr_reader :side_a, :side_b, :side_c 
  
  def initialize(a, b, c)
    @side_a = a 
    @side_b = b 
    @side_c = c 
  end

  def kind 
    if @side_a > 0 && @side_b > 0 && @side_c > 0 && @side_a + @side_b > @side_c && @side_a + @side_c > @side_b && @side_b + @side_c > @side_a 
      if @side_a == @side_b && @side_a == @side_c 
        :equilateral 
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c 
        :isosceles 
      else 
        :scalene 
      end
    else 
      raise TriangleError 
    end
  end

  class TriangleError < StandardError 
    "This triangle is not valid" 
  end
end
