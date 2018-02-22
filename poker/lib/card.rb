require 'byebug'

class Card

  VALUES = (1..13).to_a
  SUITS = [:spade, :heart, :club, :diamond]

  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def ==(other_card)
    self.value == other_card.value
  end

end


# if __FILE__ == $PROGRAM_NAME
#   card1 = Card.new(:heart, 1)
#   card2 = Card.new(:spade, 1)
#   p card1 == card2
#
# end
