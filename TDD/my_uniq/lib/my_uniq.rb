class Array

  def my_uniq
    uniq_arr = []
    self.each do |e|
      uniq_arr << e if !uniq_arr.include?(e)
    end
    uniq_arr
  end

end
