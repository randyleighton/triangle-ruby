class Triangle

@triangle_arr = []

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def valid_triangle
    @triangle_arr = [@side1, @side2, @side3].sort!
    if @triangle_arr[2] > (@triangle_arr[0] + @triangle_arr[1])
      @triangle_arr.to_s + ": is not a Triangle"
      "Not a triangle"
    elsif @triangle_arr[2] == @triangle_arr[0]
      @triangle_arr.to_s + ": is an Equilateral Triangle"
      "Equilateral Triangle"
    elsif @triangle_arr[1] == @triangle_arr[0]
      @triangle_arr.to_s + ": is an Isosceles Triangle"
      "Isosceles Triangle"
    else
      "Scalene Triangle"
      # @triangle_arr.to_s + ": is a Scalene Triangle"
    end
  end
end
testTriangle = Triangle.new(1,1,3)
testTriangle.valid_triangle
