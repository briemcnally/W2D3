require "rspec"
require "towers"

RSpec.describe Towers do
  subject(:game) {Towers.new}

  describe "#initialize" do
    it "starts with an array of three towers" do
      expect(game.towers).to eq([ [3,2,1], [], [] ])
    end
  end

  describe "#move" do
    it "moves a disc from one tower to another" do
      expect(game.move(0, 1)).to eq([ [3, 2], [1], [] ])
    end

    context "when given invalid inputs" do
      it "raises an error move is number not between 0 and 2" do
        expect{game.move([87, 2])}.to raise_error(ArgumentError)
      end

      it "raises error when to tower disc is smaller than the from tower disc" do
        game.towers = [ [3,2], [1], [] ]
        expect {game.move(0, 1)}.to raise_error(ArgumentError)
      end
    end
  end

  describe "#won" do
    context "not won" do
      it "returns false when game not won" do
        game.towers = [ [3,2], [1], [] ]
        expect(game).to_not be_won
      end
    end

    context "won" do
      it "returns true when game won" do
        game.towers = ([[], [3,2,1], [] ])
        expect(game).to be_won
      end

      it "returns true when game won" do
        game.towers = ([[], [], [3,2,1]])
        expect(game).to be_won
      end
    end

  end




end
