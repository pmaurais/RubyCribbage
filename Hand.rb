# +JMJ+
# Paul A Maurais
# 2019


require_relative 'Card'

# A players hand (wrapper for a card array)
class Hand
  def initialize
    @cards = []
  end

  def add_card(card)
    @cards.push(card)
  end

  def rem_card(card)
    if card.is_a?(Integer)
      @cards.delete_at(card)
    else
      @cards.delete(card)
    end
  end

  def [](index)
    @cards[index]
  end

  def each(&block)
    @cards.each(&block)
  end

  def to_s
    string_list = []
    @cards.each do |card|
      string_list.push(card.to_s)
    end
    string_list.to_s
  end

end

# +JMJ+