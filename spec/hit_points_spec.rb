feature 'Display hit points' do
  scenario "See the other player's hit points" do
    visit '/'
    fill_in :player1_name, with: 'Donald'
    fill_in :player2_name, with: 'Kim'
    click_button 'Submit'
    expect(page).to have_content 'Kim: 60/60'
  end
end
