require 'rspec'
require 'deck'
require 'card'
require 'hand'

RSpec.describe Card do

  subject(:card) {Card.new(:heart, 1)}

  describe "#initialize" do
    it "starts with suit" do
      expect(card.suit).to eq(:heart)
    end

    it "starts with a value" do
      expect(card.value).to eq(1)
    end
  end

  describe "#==" do
    subject(:card2) {Card.new(:spade, 1)}
    it "compares two card values and returns true if equal" do
      expect(card == card2).to eq(true)
    end
  end

end

RSpec.describe Deck do

  subject(:deck) {Deck.new}

  describe "#create_deck" do
    it "starts with 52 cards" do
      expect(deck.deck.length).to eq(52)
    end
  end

end

RSpec.describe Hand do
  subject(:hand) {Hand.new}

  describe "#initialize" do
    it "starts with 5 cards" do
      expect(hand.hand.length).to eq(5)
    end

  end
end
