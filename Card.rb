# +JMJ+
# Paul A Maurais
# 2019

# A single card. Attributes: name (Ace, One, ... King), suit, value (1-10), rank (1-13), and an array of the four attributes for convenience
class Card
  def initialize(name, suit, value)
    @name = name
    @suit = suit
    @value = value
    @rank = assign_rank
    @data_array = ['name'=>@name, 'suit'=>@suit, 'value'=>@value, 'rank'=>@rank]
  end

  def assign_rank
    if @value < 10
      @value
    elsif @name == 'Ten'
      10
    elsif @name == 'Jack'
      11
    elsif @name == 'Queen'
      12
    else
      13
    end
  end

  def [](index)
    @data_array[index]
  end

  def ==(card)
    if @name==card.name && @suit==card.suit && @value==card.value
      true
    else
      false
    end
  end

end

# +JMJ+
