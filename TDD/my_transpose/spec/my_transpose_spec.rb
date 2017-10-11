require "rspec"
require "my_transpose"

describe "#my_transpose" do

  it "Returns empty when used on empty" do
    expect(my_transpose([])).to eq([])
  end

  it "Works for a 1x1" do
    expect(my_transpose([2])).to eq([2])
  end

  it "Works for a 2x2" do
    expect(my_transpose([[1, 2], [3, 4]])).to eq([[1, 3], [2, 4]])
  end

  it "Works for a 3x3" do
    expect(my_transpose([[1, 2, 3], [4, 5, 6], [7, 8, 9]])).to eq([[1, 4, 7], [2, 5, 8], [3, 6, 9]])
  end

end
