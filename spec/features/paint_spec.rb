feature 'Player attacks other player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Paint'
    expect(page).to have_content 'Samo painted Rothko'
  end
end
