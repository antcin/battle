require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#compliment' do
    it 'compliments the player' do
      expect(player2).to receive(:receive_love)
      game.compliment(player2)
    end
  end
end
