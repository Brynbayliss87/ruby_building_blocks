require 'spec_helper'
require './enumerable_methods'

result = []
[1, 2, 3, 4, 5].my_each do |i|
  result << i + 1
end

describe 'my_each' do
  it 'iterates an array without using #each' do
    expect(result).to eq([2, 3, 4, 5, 6])
  end
end
