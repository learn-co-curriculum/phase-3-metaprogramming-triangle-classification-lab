class Triangle
  attr_reader :side_a, :side_b, :side_c 
  
  def initialize(a, b, c)
    @side_a = a 
    @side_b = b 
    @side_c = c 
  end

  def kind 
    if @side_a == @side_b && @side_a == @side_c 
      :equilateral 
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c 
      :isosceles 
    else 
      :scalene 
    end
  end
end
