require "deck"
require "rspec"


RSpec.describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "Start with 52 card deck" do
      expect(deck.deck.length).to eq(52)
    end


  end

  describe "#shuffle" do
    it "make sure the deck is shuffled" do
      expect(deck.shuffle).not_to eq(Deck.new)
    end
  end

  describe "#draw" do
    it "draws a card from the existing deck" do
      expect(deck.draw.class).to eq(Card)
    end

    it "checks if card is drawn from the deck" do
      deck.draw
      expect(deck.deck.length).to eq(51)
    end

  end

  describe "#count" do
    it "counts how many cards there are in the deck" do
      expect(deck.count).to eq(deck.deck.length)
    end
  end


end
