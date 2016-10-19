require 'player'

describe 'Player' do
  subject(:bart) { Player.new('Bart') }

  describe '#name' do
    it 'returns the name' do
      expect(bart.name).to eq 'Bart'
    end
  end
end
