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

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
