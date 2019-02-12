# +JMJ+
# Paul A Maurais
# 2019

require_relative 'Card'

# A Deck of 52 Cards
class Deck
  attr_accessor :deck

  def initialize
    @cards = [] # an ordered set of cards
    @deck = [] # the usable deck
    gen_cards
    shuffle
  end

  # Generates a deck of 52 ordered cards
  def gen_cards
    # done in a verbose manner so that code is easy to understand
    %w[H D S C].each do |suit|
      @cards.push(Card.new('Ace', suit, 1))
      @cards.push(Card.new('Two', suit, 2))
      @cards.push(Card.new('Three', suit, 3))
      @cards.push(Card.new('Four', suit, 4))
      @cards.push(Card.new('Five', suit, 5))
      @cards.push(Card.new('Six', suit, 6))
      @cards.push(Card.new('Seven', suit, 7))
      @cards.push(Card.new('Eight', suit, 8))
      @cards.push(Card.new('Nine', suit, 9))
      @cards.push(Card.new('Ten', suit, 10))
      @cards.push(Card.new('Jack', suit, 10))
      @cards.push(Card.new('Queen', suit, 10))
      @cards.push(Card.new('King', suit, 10))
    end
  end

  def shuffle
    @deck = @cards.clone
    @deck.shuffle!
  end

  def cut
    @deck.delete_at(rand(0..51))
  end

  def deal_card
    @deck.pop
  end

  def empty?
    @deck.empty?
  end

end

# +JMJ+