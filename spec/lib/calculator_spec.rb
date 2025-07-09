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

  it 'should returns sum of multiple comma-separated numbers' do
    expect(calc.add("4,1,2,3")).to eq(10)
  end

  it 'should handles newlines between numbers' do
    expect(calc.add("1\n5,2")).to eq(7)
  end

  it 'should custom delimiter declared at the beginning' do
    expect(calc.add("//;\n4;2")).to eq(6)
  end
end
