class Array

  def stock_picker
    return nil if self.length < 2

    hash = Hash.new { |h, k| h[k] = self[k[1]] - self[k[0]] }
    arr = []
    i = 0
    while i < (self.length - 1)
      j = i + 1
      while j < self.length
        arr << [i, j]
        j += 1
      end
      i += 1
    end
    arr.each do |e|
      hash[e]
    end
    max = hash.values.max
    hash.key(max)
  end

end
