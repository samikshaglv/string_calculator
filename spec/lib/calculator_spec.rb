require 'spec_helper'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  it 'returns 0 for empty string' do
    expect(calc.add("")).to eq(0)
  end

  it 'should returns the number if only one number is given' do
    expect(calc.add("10")).to eq(10)
  end

  it 'should returns sum of two numbers separated by comma' do
    expect(calc.add("10,6")).to eq(16)
  end
end
