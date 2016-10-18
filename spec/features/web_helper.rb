
def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'Bart'
  fill_in :player_2_name, with: 'Edd'
  click_button 'Submit'
end
