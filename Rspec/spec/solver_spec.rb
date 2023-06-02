require_relative '../lib/solver'
require 'rspec'

describe Solver do
  let(:solver) { Solver.new }
  describe 'factorial method' do
    it 'should take an integer argument' do
      expect(solver).to receive(:factorial).with(be_a(Integer))
      solver.factorial(42)
    end

    it 'returns the correct factorial when N is positive' do
      expect(solver.factorial(0)).to eq(1)
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
    end
    it 'raises an exception when N is negative' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Factorial is not defined for negative numbers')
    end
  end

  describe 'reverse method' do
    it 'should receive a string as an argument' do
      expect(solver).to receive(:reverse).with(be_a(String))
      solver.reverse('hello')
    end
    it 'should return a reversed string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'returns "fizzbuzz" when the number is divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end
    it 'returns "fizz" when the number is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end
    it 'returns "buzz" when the number is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end
    it 'returns the number as a string for any other case' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(17)).to eq('17')
    end
  end
end
