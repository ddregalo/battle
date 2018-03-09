feature 'Player Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'PAINT'
    expect(page).to have_content 'Samo painted Rothko'
  end

  scenario 'decreases paint points when player paints' do
    sign_in_and_play
    click_button "PAINT"
    expect(page).to have_content "Samo: 100 Paint Points"
    expect(page).to have_content "Rothko: 90 Paint Points"
  end

  scenario 'ends session if a player has zero points' do
    sign_in_and_play
    18.times do
      click_button "PAINT"
      click_button "PLAY NEXT TURN"
    end
    click_button "PAINT"
    expect(page).to have_content "Rothko just got PAINTED!!"
  end
end
