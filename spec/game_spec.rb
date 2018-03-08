require 'game'
require 'player'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#player1' do
    it 'retrieves player1' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'retrieves player2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#compliment' do
    it 'compliments the player' do
      expect(player2).to receive(:receive_love)
      game.compliment(player2)
    end
  end

  describe '#current_turn' do
    it 'starts as player1' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end
end
