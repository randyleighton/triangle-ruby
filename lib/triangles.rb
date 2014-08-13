class Triangle

@triangle_arr = []

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def final_answer
    @final_answer
  end

  def valid_triangle
    @triangle_arr = [@side1, @side2, @side3].sort!
    if @triangle_arr[2] > (@triangle_arr[0] + @triangle_arr[1])
      @final_answer = "[#{@side1}][#{@side2}][#{@side3}] is a not a Triangle"
    elsif @triangle_arr[2] == @triangle_arr[0] && @triangle_arr[2] == @triangle_arr[1]
      @final_answer = "[#{@side1}][#{@side2}][#{@side3}] is an Equilateral Triangle"
    elsif @triangle_arr[2] == @triangle_arr[1]
      @final_answer = "[#{@side1}][#{@side2}][#{@side3}] is an Isosceles Triangle"
    else
      @final_answer = "[#{@side1}][#{@side2}][#{@side3}] is a Scalene Triangle"
    end
    @final_answer
  end
end
