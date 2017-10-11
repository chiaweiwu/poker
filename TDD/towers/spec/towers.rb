require "rspec"
require ""

describe "#" do

  it "Checks if array is empty" do
    expect([].my_uniq).to eq([])
  end

  it "Outputs with out duplicats" do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 1, 3, 3].uniq)
  end

  it "Outputs array is in order they appeared" do
    expect([1, 3, 2, 1, 3, 3].my_uniq).to eq([1, 3, 2, 1, 3, 3].uniq)
  end

end
