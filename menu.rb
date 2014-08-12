require './lib/triangles'

@triangle_list = []

def main_menu
  loop do
    puts "Press A to add a triangle, L to list your triangles, X to exit"
    menu_choice = gets.chomp.downcase
    if menu_choice == 'a'
      add_triangle
    elsif menu_choice == 'l'
      list_triangles
    elsif menu_choice == 'x'
      puts "Good bye"
      exit
    else
      puts "Try again"
    end
  end
end

def add_triangle
    puts "enter first side"
    inputted_side1 = gets.chomp.to_i
    puts "enter second side"
    inputted_side2 = gets.chomp.to_i
    puts "enter third"
    inputted_side3 = gets.chomp.to_i
    @triangle_list  << Triangle.new(inputted_side1, inputted_side2, inputted_side3)
    puts "triangle sides added. \n\n"
end

def list_triangles
  puts "Here are all your triangles:"
  @triangle_list.each do |triangle|
    puts "Triangle Verification=> " + triangle.valid_triangle
  end
  puts "\n"
end

main_menu
