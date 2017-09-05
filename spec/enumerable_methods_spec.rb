require 'spec_helper'
require './enumerable_methods'


describe 'Enumerable' do
  before(:each) do
    @result = []
  end

  it 'my_each' do
    [1, 2, 3, 4, 5].my_each do |i|
      @result << i + 1
    end
    expect(@result).to eq([2, 3, 4, 5, 6])
  end

  it 'my_each_with_index' do
    [1, 2, 3, 4, 5].my_each_with_index do |num, index|
      @result << num + index
    end
    expect(@result).to eq([1, 3, 5, 7, 9])
  end

end


