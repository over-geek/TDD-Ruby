require_relative 'solver'
require 'rspec'

Rspec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    context 'Test the factorial for non-negative numbers' do
      it 'returns the factorial of the given number' do
        expect(solver.factorial(5)).to eq(120)
        expect(solver.factorial(0)).to eq(1)
      end
    end
end