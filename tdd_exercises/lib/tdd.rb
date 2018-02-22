require 'byebug'

class Array

  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end

    result
  end


  def two_sum
    result = []

    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        result << [i, j] if self[i] + self[j] == 0
        j += 1
      end
      i += 1
    end

    result
  end

  def my_transpose
    result = []

    self.size.times do |idx1|
      sub_arr = []
      self.each do |arr|
        sub_arr << arr[idx1]
      end
      result << sub_arr
    end

    result
  end

  def stock_picker
    [self.index(self.min), self.index(self.max)]
  end
end
