require_relative '../lib/solver'
require 'rspec'

describe Solver do
  let(:solver) { Solver.new }
  describe 'factorial' do
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
end
