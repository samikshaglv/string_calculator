require 'spec_helper'
require_relative '../../lib/calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  it 'returns 0 for empty string' do
    expect(calc.add("")).to eq(0)
  end
end
