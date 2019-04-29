class Triangle
  # write code here
  attr_accessor :first_side,:second_side,:third_side
  
   class TriangleError < StandardError
     
   end
   
  def initialize(first_side,second_side,third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end 
  
  def kind 
    if(@first_side<=0) || (@second_side<=0) || (@third_side<=0)
      raise TriangleError
    elsif (@first_side + @second_side <= @third_side) || (@first_side + @third_side <= @second_side)  || (@second_side + @third_side <= @first_side)
      raise TriangleError
    else 
      if @first_side == @second_side && @first_side == @third_side
        :equilateral
      elsif @first_side == @second_side || @first_side == @third_side || @second_side == @third_side
        :isosceles
     elsif @first_side != @second_side && @first_side != @third_side && @second_side != @third_side
        :scalene
      end 
    end 
 
  end
end 
