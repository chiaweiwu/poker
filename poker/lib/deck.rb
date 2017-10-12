require_relative "card"
class Deck

  attr_reader :deck

  def initialize
    @deck = []

    Card.suits.each do |suit|
      (2..14).to_a.each do |i|
        @deck << Card.new(i, suit)
      end
    end
  end

  def shuffle
    @deck.shuffle!
    self
  end

  def draw
    @deck.pop
  end

  def count
    @deck.length
  end


end
