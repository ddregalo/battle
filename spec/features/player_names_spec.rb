feature 'Get Player 1 & Player 2 Names' do
  scenario 'submitting names in form' do
    visit('/')
    fill_in :player_1_name, with: 'Samo'
    fill_in :player_2_name, with: 'Rothko'
    click_button 'Start Match'
    expect(page).to have_content 'Samo vs. Rothko'
  end
end
