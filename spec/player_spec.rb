require 'player'

describe 'Player' do
  subject(:donald) { Player.new('Donald') }

  describe '#name' do
    it 'returns the player name' do
      expect(donald.name).to eq 'Donald'
    end
  end
end
