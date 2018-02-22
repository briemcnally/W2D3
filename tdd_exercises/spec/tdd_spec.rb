require 'rspec'
require 'tdd'

RSpec.describe Array do

  describe "#my_uniq" do
    it "removes all duplicated elements" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end
  end

  describe "#two_sum" do
    it "returns indices of pairs that sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "flips the row and column orientation" do
      expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe "#stock_picker" do
    it "returns indices array of [min value, max value]" do
      expect([100, 1000, 20, 50, 2, 10].stock_picker).to eq([4, 1])
    end
  end
end
