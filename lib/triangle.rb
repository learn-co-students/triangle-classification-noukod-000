class Triangle
  attr_accessor :l, :r, :d

  def initialize left, right, down
    @l, @r, @d = left, right, down
  end

  class TriangleError < StandardError
  end

  def kind
    valided_triangle = [(l>0),(r>0),(d>0),(l + r > d), (l + d > r), (d + r > l)]
    raise TriangleError if valided_triangle.include?(false)
    if l == r && r == d
      :equilateral
    elsif l == r || l == d || r == d
      :isosceles
    else
      :scalene
    end
  end

end
