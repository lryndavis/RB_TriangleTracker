class Triangle
require('pry')

  define_method(:initialize) do |sideA, sideB, sideC|
     @sideA = sideA
     @sideB = sideB
     @sideC = sideC
  end

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
end
