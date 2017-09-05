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

end
