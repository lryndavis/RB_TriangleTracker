require('rspec')
require('triangle')



describe(Triangle) do
  describe('definition of a triangle') do
    it('will return false if its not a triangle, sum of a + b <= c') do
      test_triangle = Triangle.new(2,2,6)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it('will return true if its a triangle, sum of a + b > c') do
      test_triangle = Triangle.new(4,5,6)
      expect(test_triangle.triangle?()).to(eq(true))
    end

    it('will return false if the sum of a + b equals c') do
      test_triangle = Triangle.new(3,3,6)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end

  describe('equilateral') do
    it('will return true if triangle is an equilateral') do
      test_triangle = Triangle.new(3,3,3)
      expect(test_triangle.equilateral?()).to(eq(true))
    end

    it('will return false if triangle is not an equilateral') do
      test_triangle = Triangle.new(3,3,4)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it('will return false if triangle is not a triangle') do
      test_triangle = Triangle.new(3,3,8)
      expect(test_triangle.equilateral?()).to(eq(false))
    end
  end

  describe('isoceles') do
    it('will return true if the triangle is an isoceles') do
      test_triangle = Triangle.new(6,6,10)
      expect(test_triangle.isoceles?()).to(eq(true))
    end

    it('will true false if the triangle is not an isoceles') do
      test_triangle = Triangle.new(4,4,10)
      expect(test_triangle.isoceles?()).to(eq(false))
    end

    it('will return false if triangle is not a triangle') do
      test_triangle = Triangle.new(3,3,8)
      expect(test_triangle.equilateral?()).to(eq(false))
    end
  end

  describe('scalene') do
    it('will return true if the triangle is a scalene') do
      test_triangle = Triangle.new(7,6,12)
      expect(test_triangle.scalene?()).to(eq(true))
    end

    it('will return false if the triangle is NOT scalene') do
      test_triangle = Triangle.new(7,7,15)
      expect(test_triangle.scalene?()).to(eq(false))
    end

    it('will return false if triangle is not a triangle') do
      test_triangle = Triangle.new(3,3,8)
      expect(test_triangle.scalene?()).to(eq(false))
    end
  end
end
