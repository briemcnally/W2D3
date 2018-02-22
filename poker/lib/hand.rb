require_relative "card.rb"
require_relative "deck.rb"
require "byebug"

class Hand
  attr_reader :hand

  def initialize(deck)
    @hand = deck.shuffled.take(5)
  end

end
# if __FILE__ == $PROGRAM_NAME
#
#   h = Hand.new(deck)
#   p h.hand
# end
