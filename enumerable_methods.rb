module Enumerable

  def my_each
    # iterates an array without using #each

    self.length.times do |i|
      yield(self[i])
    end
  end

end
