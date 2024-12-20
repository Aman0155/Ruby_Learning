class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    raise ZeroDivisionError, 'cannot divide by zero ' if b == 0
    a / b.to_f
  end
end


# calc = Calculator.new
# puts calc.add(5, 4)  
# puts calc.subtract(5, 4)
# puts calc.multiply(5, 4)
# puts calc.divide(10,2)


