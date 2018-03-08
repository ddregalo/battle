feature 'Switch Turns' do
  scenario 'should switch current player to the opponent' do
    sign_in_and_play
    click_button 'PAINT'
    click_button 'PLAY NEXT TURN'
    expect(page).not_to have_content "Samo's Turn"
    expect(page).to have_content "Rothko's Turn"
  end
end
