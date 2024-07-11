class Triangle
  def initialize side_one, side_two, side_three
    @sides = [side_one, side_two, side_three]
  end

  def kind
    if @sides.filter{|side| side < 0}.length > 0 ||
      @sides[0] >= @sides[1] + @sides[2] ||
      @sides[1] >= @sides[0] +  @sides[2] ||
      @sides[2] >= @sides[0] + @sides[1]
      raise TriangleError
    elsif @sides.uniq.length == 3
      :scalene
    elsif @sides.uniq.length == 2
      :isosceles
    elsif @sides.uniq.length == 1
      :equilateral
    end
  end

  class TriangleError < StandardError
  end
end
