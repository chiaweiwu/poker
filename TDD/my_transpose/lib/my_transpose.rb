  def my_transpose(arr)
    return arr if arr.length < 2
    arr_trans = []
    i = 0
    while i < arr.length
      hold = []
      j = 0
      while j < arr.length
        hold << arr[j][i]
        j += 1
      end
      arr_trans << hold
      i += 1
    end
    arr_trans
  end
