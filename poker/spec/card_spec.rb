require "card"
require "rspec"


RSpec.describe Card do
  subject(:card) { Card.new(8, "diamond") }

  describe "#initialize" do
    it "sets a value" do
      expect(card.value).to eq(8)
    end

    it "sets a suit" do
      expect(card.suit).to eq(:♦)
    end

  end


end
