require 'game'

describe Game do
  subject(:game) { described_class.new('bart', 'edd') }
  subject(:finished_game) { described_class.new(dead_player, 'edd') }
  let(:bart) { double :player, hit_points: 60 }
  let(:edd) { double :player, hit_points: 60 }
  let(:dead_player) { double :player, hit_points: 0 }

  describe '#player_1' do
    it 'retrives the first player' do
      expect(game.player_1).to eq 'bart'
    end
  end

  describe '#player_2' do
    it 'retrives the first player' do
      expect(game.player_2).to eq 'edd'
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(edd).to receive(:receive_damage)
      game.attack(edd)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq 'bart'
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq 'edd'
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of('bart')).to eq 'edd'
      expect(game.opponent_of('edd')).to eq 'bart'
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(game.game_over?).to be false
    end
  end

  it 'returns true if at least on player is at 0HP' do
    expert(finished_game.game_over?).to be true
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end

end
