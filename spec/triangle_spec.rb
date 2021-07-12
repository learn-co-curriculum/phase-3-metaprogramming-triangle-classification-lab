describe Triangle do

  describe '#kind' do
    
    it 'returns :equilateral when all sides are equal' do
      expect(Triangle.new(2, 2, 2).kind).to eq(:equilateral)
      expect(Triangle.new(10, 10, 10).kind).to eq(:equilateral)
    end
    
    it 'returns :isosceles when any two sides are equal' do
      expect(Triangle.new(3, 4, 4).kind).to eq(:isosceles)
      expect(Triangle.new(4, 3, 4).kind).to eq(:isosceles)
      expect(Triangle.new(4, 4, 3).kind).to eq(:isosceles)
      expect(Triangle.new(10, 10, 2).kind).to eq(:isosceles)
    end
  
    it 'returns :scalene when no sides are equal' do
      expect(Triangle.new(3, 4, 5).kind).to eq(:scalene)
      expect(Triangle.new(10, 11, 12).kind).to eq(:scalene)
      expect(Triangle.new(5, 4, 2).kind).to eq(:scalene)
      expect(Triangle.new(0.4, 0.6, 0.3).kind).to eq(:scalene)
    end
  
    it 'raises an error for triangles with no size' do
      expect { Triangle.new(0, 0, 0).kind }.to raise_error(Triangle::TriangleError)
    end
  
    it 'raises an error for triangles with negative sides' do
      expect { Triangle.new(3, 4, -5).kind }.to raise_error(Triangle::TriangleError)
    end
  
    it 'raises an error for triangles violating triangle inequality' do
      expect { Triangle.new(1, 1, 3).kind }.to raise_error(Triangle::TriangleError)
      expect { Triangle.new(2, 4, 2).kind }.to raise_error(Triangle::TriangleError)
      expect { Triangle.new(7, 3, 2).kind }.to raise_error(Triangle::TriangleError)
    end

  end

end
