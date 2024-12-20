require_relative 'Calculator'

RSpec.describe 'Calculator' do
  let(:calculator){Calculator.new}
 
  # calculator =Calculator.new
  describe '#add' do
    it 'returns the sum of two numbers' do
      expect(calculator.add(2, 3)).to eq(5)
    end
  end
  
  describe '#subtract' do
    it 'returns the difference of two numbers' do
      expect(calculator.subtract(7, 3)).to eq(4)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      expect(calculator.multiply(4, 5)).to eq(20)
    end
  end

  describe '#divide' do
    it 'returns the quotient of two numbers' do
      expect(calculator.divide(10, 2)).to eq(5)
    end

    it 'raises an error when dividing by zero' do
      expect { calculator.divide(10, 0) }.to raise_error(ZeroDivisionError)
    end
  end
end