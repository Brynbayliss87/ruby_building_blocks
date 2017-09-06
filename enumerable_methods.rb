module Enumerable

  def my_each
    # iterates an array without using #each

    self.length.times do |i|
      yield(self[i])
    end
  end

  def my_each_with_index
    # iterates an array with an index 

    self.length.times do |i|
      yield(self[i], i)
    end
  end

  def my_select
    # returns an array with elements
    # that the block returns true for

    result = []
    self.my_each do |i|
      result << i if yield(i) == true
    end
    result
  end

  def my_all?
    # passes each element to a block
    # returns true if the block never returns false or nil

    self.my_each do |word|
      return false unless yield(word)
    end
    true
  end

  

end
