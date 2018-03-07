feature 'Get Player 1 & Player 2 Names' do
  scenario 'submitting names in form' do
    sign_in_and_play
    expect(page).to have_content "Samo vs. Rothko"
  end
end
