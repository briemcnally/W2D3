require_relative "card.rb"

require "byebug"



class Deck

  attr_reader :cards

  def initialize
    @cards = create_deck
  end

  def create_deck
    cards = []

    Card::SUITS.each do |suit|
      Card::VALUES.each do |value|
        cards << Card.new(suit, value)
      end
    end
    cards
  end

  def shuffled
    self.cards.shuffle
  end

end
#

# if __FILE__ == $PROGRAM_NAME
#   deck = Deck.new
#   p deck.deck.shuffle.take(5)
# end
d = Deck.new
Hand.new(d)
