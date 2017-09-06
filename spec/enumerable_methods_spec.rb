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

  it 'my_select' do
    @result = [1, 2, 3, 4, 5].my_select{|i| i.even?}
    expect(@result).to eq([2, 4])
  end

  it 'my_all' do
    @result = ['ant', 'bear', 'cat'].my_all?{|word| word.length <= 3}
    expect(@result).to eq(false)
  end

  it 'my_any?' do
    @result = ['ant', 'bear', 'cat'].my_any?{|word| word == 'dog'}
    expect(@result).to eq(false)
  end

end


