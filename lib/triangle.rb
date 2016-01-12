class Triangle
require('pry') #should this be above the class?

  define_method(:initialize) do |sideA, sideB, sideC|
     @sideA = sideA
     @sideB = sideB
     @sideC = sideC
  end

  #
  # Really good use of the ruby keywords and ternary operators
  #

  define_method(:triangle?) do
    (@sideA + @sideB) > @sideC ? true : false
  end

  define_method(:equilateral?) do
    return false unless triangle?
    (@sideA == @sideB && @sideA == @sideC) ? true : false
  end

  define_method(:isoceles?) do
    return false unless triangle?
    ((@sideA == @sideB || @sideB == @sideC || @sideA == @sideC) && !equilateral?) ? true : false
  end

  define_method(:scalene?) do
    return false unless triangle?
    (@sideaA != @sideB && @sideA != @sideC) ? true : false
  end

  define_method(:triangle_type) do
    return "WTF" unless triangle? #ha!
    return "equilateral"  if equilateral?
    return "isoceles"  if isoceles?
    return "scalene"  if scalene?
  end
end
