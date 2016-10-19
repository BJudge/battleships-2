require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:bart) { double :player }
  let(:edd) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(edd).to receive(:receive_damage)
      game.attack(edd)
    end
  end
end
