require 'rails_helper'

RSpec.describe Calculator, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(Calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(Calculator.add("1,5")).to eq(6)
    end

    it 'returns the sum of multiple numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines as delimiters' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end
end
