def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Samo'
  fill_in :player_2_name, with: 'Rothko'
  click_button 'Start Session'
end
