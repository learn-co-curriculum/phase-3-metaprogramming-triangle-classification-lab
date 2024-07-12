require "pry"

class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def sides
    [side1, side2, side3]
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

example1 = Triangle.new(3, 5, 6)

binding.pry

