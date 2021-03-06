feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Bart attacked Edd'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Edd 60 hit points'
    expect(page).to have_content 'Edd 50 hit points'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Bart 60 hit points'
    expect(page).to have_content 'Bart 50 hit points'
  end

  scenario 'beattacked by Player 2' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Edd attacked Bart'
  end

end
