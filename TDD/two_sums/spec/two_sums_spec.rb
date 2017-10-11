require "rspec"
require "two_sums"

describe "#two_sums" do

  it "Checks if array is empty" do
    expect([].two_sums).to eq([])
  end

  it "Index pairs sorted correctly, based on smaller elements" do
    expect([-1, 0, 2, -2, 1].two_sums).to eq([[0, 4], [2, 3]])
  end

  it "Index correct" do
    expect([-1, 0, 2, -2, 1, 1].two_sums).to eq([[0, 4], [0, 5], [2, 3]])
  end

  it "If any two pairs adds to zero" do
    expect([1, 2, 3].two_sums).to eq([])
  end

end
