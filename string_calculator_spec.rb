require './string_calculator'


RSpec.describe 'add_string' do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'adding two numbers with , delimiter' do
    expect(StringCalculator.add("1,2,3")).to eq(6)
  end

  it 'adding two numbers with \n delimiter' do
    expect(StringCalculator.add("1\n2\n3")).to eq(6)
  end

  it 'adding two numbers with , and \n delimiter' do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it 'adding two numbers with custom delimiter' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end

  it 'adding two numbers with custom delimiter' do
    expect(StringCalculator.add("//\n\n1\n2")).to eq(3)
  end
end