feature 'Enter names' do
  scenario 'submitting names' do
    visit '/'
    fill_in :player1_name, with: 'Donald'
    fill_in :player2_name, with: 'Kim'
    click_button 'Submit'
    expect(page).to have_content 'Donald vs. Kim'
  end
end
