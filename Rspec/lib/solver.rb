class Solver
  def factorial(num)
    if num.negative?
      raise ArgumentError, 'Factorial is not defined for negative numbers'
    elsif num.zero?
      1
    else
      (1..num).reduce(:*)
    end
  end

  def reverse(str)
    str.reverse
  end
end
