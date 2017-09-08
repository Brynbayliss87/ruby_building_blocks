require 'spec_helper'
require './bubble_sort'

result = bubble_sort([4, 3, 2, 0, 78, 2])

describe 'bubble_sort' do
  it 'sorts an array' do
    expect(result).to eq([0, 2, 2, 3, 4, 78])
  end
end

output = bubble_sort_by(%w[hey hi hello]) do |left, right|
  left.length - right.length
end

describe 'bubble_sort_by' do
  it 'sorts an array but accepts a block' do
    expect(output).to eq(%w[hi hey hello])
  end
end
