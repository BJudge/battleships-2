feature 'Game Over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'Player 1 loses' do
      click_link 'Attack'
      expect(page).to have_content 'Bart loses!'
    end

  end
end
