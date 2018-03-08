require 'player'


describe Player do
  subject(:donald) { Player.new('Donald') }
  subject(:kim) { Player.new('Kim') }

  describe '#name' do
    it 'returns the name' do
      expect(donald.name).to eq 'Donald'
    end
  end

  describe '#heart_points' do
    it 'returns the hit points' do
      expect(donald.heart_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#compliment' do
    it 'damages the player' do
      expect(kim).to receive(:receive_love)
      donald.compliment(kim)
    end
  end

  describe '#receive_love' do
    it 'reduces the player hit points' do
      expect { donald.receive_love }.to change { donald.heart_points }.by(-10)
    end
  end
 end
