# +JMJ+
# Paul A Maurais
# 2019

require_relative 'Card'
require_relative 'Hand'
require_relative 'Deck'
require 'test/unit'

# Test for card class
class CardTests < Test::Unit::TestCase
  CARD = Card.new('king', 'H', 10)

  def test_gen
    assert_equal([13, 'king', 'H', 10], [CARD.rank, CARD.name, CARD.suit, CARD.value])
  end

  def test_equals
    new_card = Card.new('king', 'H', 10)
    assert_true(CARD == new_card)
  end

end

# Tests for deck class
class DeckTests < Test::Unit::TestCase
  DECK = Deck.new
  DECK.deck = [Card.new('Eight', 'H', 8),
               Card.new('Eight', 'S', 8),
               Card.new('Seven', 'S', 7),
               Card.new('Nine', 'C', 9)]

  def test_deal_card
    hand1 = Hand.new
    hand2 = Hand.new

    until DECK.empty?
      hand1.add_card(DECK.deal_card)
      hand2.add_card(DECK.deal_card)
    end

    puts hand1
    puts hand2

  end

  def test_shuffle
    deck1 = Deck.new
    deck2 = deck1.clone

    assert_equal(deck1.deck, deck2.deck)
    deck2.shuffle
    assert_not_equal(deck1.deck, deck2.deck)
  end
end

# tests for hand class
class HandTest < Test::Unit::TestCase
  DECK = Deck.new
  DECK.deck = [Card.new('Eight', 'H', 8),
               Card.new('Eight', 'S', 8),
               Card.new('Seven', 'S', 7),
               Card.new('Nine', 'C', 9)]

  def test_add_rem
    hand1 = Hand.new

    until DECK.empty?
      hand1.add_card(DECK.deal_card)
    end

    puts hand1

    hand1.rem_card(0)
    puts hand1

    hand1.rem_card(Card.new('Seven', 'S', 7))
    puts hand1

  end
end


# +JMJ+
