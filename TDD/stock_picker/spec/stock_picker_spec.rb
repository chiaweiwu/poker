require "rspec"
require "stock_picker"

describe "#stock_picker" do

  it "Checks if array is empty" do
    expect([].stock_picker).to eq(nil)
  end

  it "Checks if arr is less than 3" do
    expect([3, 2].stock_picker).to eq([0, 1])
  end

  it "Picks best" do
    expect([100, 150, 125, 130, 115, 170, 190].stock_picker).to eq([0, 6])
  end

  it "Returns best pair possible" do
    expect([190, 150, 300, 200, 100, 170, 50].stock_picker).to eq([1, 2])
  end

end
