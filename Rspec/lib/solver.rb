class Solver
  def factorial(n)
    if n < 0
      raise ArgumentError, 'Factorial is not defined for negative numbers'
    elsif n.zero?
      1
    else
      (1..n).reduce(:*)
    end
  end
end
