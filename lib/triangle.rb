class Triangle
  attr_accessor :s_1, :s_2, :s_3

    def initialize(s_1, s_2, s_3)
      @s_1 = s_1
      @s_2 = s_2
      @s_3 = s_3
    end

  def kind
    restriction = (@s_1 > 0),
                  (@s_2 > 0),
                  (@s_3 > 0),
                  (@s_1  + @s_2 > @s_3),
                  (@s_1  + @s_3 > @s_2),
                  (@s_3 + @s_2 > @s_1)

    if restriction.include?(false)
      raise TriangleError
    end

    if @s_1 == @s_2 && @s_2 == @s_3
      :equilateral
    elsif @s_1 == @s_2 || @s_1 == @s_3 || @s_2 == @s_3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end