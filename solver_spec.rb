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

    context 'Test the factorial of a negative input' do
      it 'exception error' do
        expect { solver.factorial(-1) }.to raise_error(ArgumentError)
      end
    end
  end
  describe '#reverse' do
    it 'reverse a word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('microverse')).to eq('esrevorcim')
    end
  end
end