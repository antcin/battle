feature 'Display hit points' do
  scenario "See the other player's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Kim: 60/60'
  end
end
