class Triangle

  attr_accessor :equilateral, :isosceles ,:scalene

  def initailize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def kind(triangle)
    self.equilateral = triangle
    self.isosceles = triangle
    self.scalene = triangle
    if triangle.class != Triangle
      begin
        raise TriangleError
        rescue  TriangleError  => error
          puts error.message
        end
      else
        triangle.equilateral = self
        triangle.isosceles = self
        triangle.scalene = self
   end
 end
end

class TriangleError < StandardError
 def message
   "ERROR"
  end
 end
end
