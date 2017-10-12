require_relative "card"
class Hand


  def initialize(hand = [])
    @cards = hand
  end

  def add_card(card)
    @cards << card
  end

  def hand_value
    return :SF if straight_flush?
    return :FK if four_kind?
    return :FH if full_house?
    return :F  if flush?
    return :S  if straight?
    return :TK if three_kind?
    return :TP if two_pair?
    return :OP if one_pair?
    return :HC
  end

  def comp_rank
    []
  end

  def straight_flush?
    straight? && flush?
  end

  def four_kind?
    values = @cards.map(&:value).sort
    values_uniq = values.uniq
    values_uniq.each do |e|
      return true if values.count(e) == 4
    end
    false
  end

  def full_house?
    three_kind? && one_pair?
  end

  def flush?
    suits = @cards.map(&:suit)
    suits.uniq.length == 1
  end

  def straight?
    values = @cards.map(&:value).sort
    return true if values == [2, 3, 4, 5, 14]
    i = 2
    while i <= 10
      j = i + 4
      return true if values == (i..j).to_a
      i += 1
    end
    false
  end

  def three_kind?
    values = @cards.map(&:value).sort
    values_uniq = values.uniq
    values_uniq.each do |e|
      return true if values.count(e) == 3
    end
    false
  end

  def two_pair?
    values = @cards.map(&:value).sort

    hash = Hash.new { |h, key| h[key] = values.count(key) }

    values.each do |el|
      hash[el]
    end

    hash.values.count(2) == 2

  end

  def one_pair?
    return false if two_pair?
    values = @cards.map(&:value).sort
    values_uniq = values.uniq
    values_uniq.each do |e|
      return true if values.count(e) == 2
    end
    false
  end

  def val

  end

end
arr = [Card.new(2, "heart"),
       Card.new(6, "heart"),
       Card.new(8, "heart"),
       Card.new(3, "heart"),
       Card.new(14, "heart")]
p Hand.new(arr).hand_value
