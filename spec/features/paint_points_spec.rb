feature 'Show Player Health Points' do
  scenario 'display player health' do
    sign_in_and_play
    expect(page).to have_content "Samo: 100 Paint Points"
    expect(page).to have_content "Rothko: 100 Paint Points"
  end
end
