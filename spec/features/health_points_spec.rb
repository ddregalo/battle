feature 'Show Player Health Points' do
  scenario 'display player health' do
    visit('/play')
    expect(page).to have_content "Rothko: 60 Health"
  end
end
