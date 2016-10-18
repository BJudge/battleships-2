feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bart'
    fill_in :player_2_name, with: 'Edd'
    click_button 'Submit'
    expect(page).to have_content 'Bart vs. Edd'
  end
end
