feature 'Show Player Health Points' do
  scenario 'display player health' do
    sign_in_and_play
    expect(page).to have_content "Rothko: 0 Paint Points"
  end
end
