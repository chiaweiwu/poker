class Card

  attr_reader :value, :suit

  SUITS = { "heart"   => :♥,
            "spade"   => :♠,
            "diamond" => :♦,
            "club"    => :♣ }.freeze


  def initialize(value, suit)
    @value = value
    @suit = SUITS[suit]
  end

  def self.suits
    SUITS.keys
  end



end
