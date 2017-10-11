class Array

  def two_sums
    i = 0

    pairs = []

    while i < self.length
      j = i + 1

      while j < self.length

        pairs << [i, j] if self[i] + self[j] == 0

        j += 1
      end

      i += 1
    end

    pairs
  end

end
