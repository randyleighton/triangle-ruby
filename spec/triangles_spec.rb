require ('rspec')
require ('triangles')

describe Triangle do
  it 'initializes the triangle with three sides' do
    test_triangle = Triangle.new(2,3,4)
    expect(test_triangle).to be_instance_of Triangle
  end

  it 'checks whether the inputted sides can form a triangle' do
    test_triangle = Triangle.new(2,3,40)
    expect(test_triangle.valid_triangle).to eq false
  end

  it 'checks whether the inputted sides form a equilateral' do
    test_triangle = Triangle.new(5,5,5)
    expect(test_triangle.valid_triangle).to eq 'Equilateral Triangle'
  end

  it 'checks whether the inputted sides form a Isosceles Triangle' do
    test_triangle = Triangle.new(9,3,9)
    expect(test_triangle.valid_triangle).to eq 'Isosceles Triangle'
  end

  it 'checks whether the inputted sides form a Scalene Triangle' do
    test_triangle = Triangle.new(2,4,5)
    expect(test_triangle.valid_triangle).to eq 'Scalene Triangle'
  end

end

