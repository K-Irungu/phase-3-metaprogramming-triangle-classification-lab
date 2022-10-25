class Triangle
  # write code here
  attr_reader :side1, :side2, :side3
  attr_accessor :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @type = ""
  end

  def kind
    a = self.side1
    b = self.side2
    c = self.side3
    if (a == 0 && b == 0 && c == 0) || (a < 0 || b < 0 || c < 0) || ( (a + b) <= c) || ((a + c) <= b) || ((b + c) <= a)
      raise TriangleError
    elsif (a ==b && a == c)
      self.type = :equilateral
    elsif (a == b && a != c) || (a == c && a!= b) || (b == c && b != a) || (b == a && b != c) || (c == a && c != b) || (c ==b && c != a)
      self.type = :isosceles
    elsif (a != b && a != c && b != c)
      self.type = :scalene
    end
    self.type
  end

  class TriangleError < StandardError

  end
end

