feature 'Testing Infrastructure' do
  it 'tests that testing infrastructure functions' do
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end
end
