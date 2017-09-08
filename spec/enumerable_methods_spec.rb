require 'spec_helper'
require './enumerable_methods'


describe 'my_each and my_each_with_index' do
  before(:each) do
    @result = []
  end

  it 'my_each should iterate an array' do
    [1, 2, 3, 4, 5].my_each do |i|
      @result << i + 1
    end
    expect(@result).to eq([2, 3, 4, 5, 6])
  end

  it 'my_each_with_index iterates with an index' do
    [1, 2, 3, 4, 5].my_each_with_index do |num, index|
      @result << num + index
    end
    expect(@result).to eq([1, 3, 5, 7, 9])
  end
end

describe 'my_select' do
  it 'my_select returns an array wih elements that arent false' do
    @result = [1, 2, 3, 4, 5].my_select{|i| i.even?}
    expect(@result).to eq([2, 4])
  end
end

describe 'my_all' do
  it 'my_all returns true if block never returns false or nil' do
    @result = ['ant', 'bear', 'cat'].my_all?{|word| word.length <= 3}
    expect(@result).to eq(false)
  end
end

describe 'my_any?' do
  it 'my_any? returns true if any element returns true' do
    @result = ['ant', 'bear', 'cat'].my_any?{|word| word == 'dog'}
    expect(@result).to eq(false)
  end
end

describe 'my_none?' do
  it 'my_none? returns true if the block never returns true' do
    @result = ['ant', 'bear', 'cat'].my_none?{|word| word.length > 4}
    expect(@result).to eq(true)
  end
end

describe 'my_count' do
  it 'my count returns the number of items if no argument is given' do
    @result = [1 , 2, 3, 4, 5].my_count
    expect(@result). to eq(5)
  end

  it 'counts the number of items that match an argument if given' do
    @result = [1, 1, 2, 3].my_count(1)
    expect(@result).to eq(2)
  end

  it 'counts the number of elements in a block yielding a true value' do
    @result = [2, 3, 4, 6, 8, 9].my_count{|x| x%2 ==0}
    expect(@result).to eq(4)
  end
end
