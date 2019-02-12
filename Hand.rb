# +JMJ+
# Paul A Maurais
# 2019
class Hand
  def initialize
    @cards=[]
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

  def inspect
    @cards.inspect
  end

end

# +JMJ+